package project.root.controller;

import org.springframework.ui.Model;
import project.root.model.Holding;
import project.root.model.HoldingLeaf;
import project.root.model.HoldingService;
import project.root.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import project.root.repository.others.HoldingLeafRepository;
import project.root.repository.others.HoldingRepository;
import project.root.repository.others.HoldingServiceRepository;
import project.root.util.HoldingListSorter;
import project.root.util.HoldingsToExcel;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private HoldingsToExcel holdingsToExcel;

    @Autowired
    private HoldingRepository holdingRepository;

    @Autowired
    private HoldingServiceRepository holdingServiceRepository;

    @Autowired
    private HoldingLeafRepository holdingLeafRepository;

    @Autowired
    private ServletContext context;

    @Autowired
    private HoldingListSorter holdingListSorter;


    //Основная страница сервиса
    @GetMapping("search")
    public String mainPage() {
        return "search";
    }

    @GetMapping("")
    public String view() {
        if (isAuthenticated()) {
            return "redirect:search";
        }
        return "login";
    }

    @GetMapping("login")
    public String login() {
        if (isAuthenticated()) {
            return "redirect:search";
        }
        return "login";
    }

    @GetMapping("/services")
    public String getServices(@RequestParam(value = "inn") String inn,
                              @RequestParam(value = "rfName") String rfName,
                              Model model) {

        List<HoldingService> services = holdingServiceRepository.findByInnAndRfname(inn, rfName);

        model.addAttribute("services", services);
        model.addAttribute("inn", inn);
        model.addAttribute("rf_name", rfName);

        return services.size() > 0 ? "service" : "serviceStub";
    }

    @PostMapping("/saveHolding")
    public String saveHolding(@ModelAttribute(name = "holding") Holding holding) {

        //Так как записи должны сначала попасть в таблицу стейджинга, то нам нужна новая сущность для этой таблицы
        HoldingLeaf holdingLeaf = new HoldingLeaf();
        //Присваиваем поля новой сущности
        holdingLeaf.equalizeFields(holding);

        //Грузим холдинг в стейджинг
        holdingLeafRepository.save(holdingLeaf);
        holdingLeafRepository.udp_HOLDING1_Leaf(
                holdingLeaf.getImportType(),
                holdingLeaf.getImportStatus_ID(),
                holdingLeaf.getBatchTag()
        );

        return "saveStub";
    }

    @PostMapping("holdingsResult")
    public String holdingsResult(@RequestParam(value = "parameterName") String parameterName,
                                 @RequestParam(value = "parameterValue") String parameterValue,
                                 Model model) {
        User user1 = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        List<Holding> holdings = getHoldingsByParameter(parameterName, parameterValue);

        model.addAttribute("holdings", holdingListSorter.sortHoldingList(holdings));
        model.addAttribute("role", user1.getRole().equals("ROLE_ADMIN"));
        model.addAttribute("paramName", parameterName);
        model.addAttribute("paramValue", parameterValue);

        return "holdingsTable";
    }

    private List<Holding> getHoldingsByParameter(@RequestParam("parameterName") String parameterName, @RequestParam("parameterValue") String parameterValue) {

        List<Holding> holdings;

        if (parameterName.equals("kam")) {

            holdings = holdingRepository.findUserBykam(parameterValue);

        } else if (parameterName.equals("region")) {

            holdings = holdingRepository.findUserByregion(parameterValue);

        } else if (parameterName.equals("macro_region")) {

            holdings = holdingRepository.findUserBymacro_region(parameterValue);

        } else {

            holdings = holdingRepository.findByName(parameterValue);

        }
        return holdings;
    }

    @GetMapping("/showAddForm")
    public String showAddForm(@RequestParam("parameterName") String parameterName,
                              @RequestParam("parameterValue") String parameterValue,
                              Model model) {

        Holding holding = new Holding();

        model.addAttribute("holding", holding);
        model.addAttribute("parameterName", parameterName);
        model.addAttribute("parameterValue", parameterValue);

        return "holdingForm";
    }

    @GetMapping("/showFormUpdate")
    public String showUpdateForm(@RequestParam(name = "holdingCode") int holdingCode,
                                 @RequestParam("parameterName") String parameterName,
                                 @RequestParam("parameterValue") String parameterValue,
                                 Model model) {

        Holding holding = holdingRepository.findByCode(holdingCode);

        model.addAttribute("holding", holding);
        model.addAttribute("parameterName", parameterName);
        model.addAttribute("parameterValue", parameterValue);

        return "holdingForm";
    }

    private boolean isAuthenticated() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || AnonymousAuthenticationToken.class.
                isAssignableFrom(authentication.getClass())) {
            return false;
        }
        return authentication.isAuthenticated();
    }

    @GetMapping(value = "DownloadExcel")
    public void downloadHoldings(HttpServletRequest request,
                                 HttpServletResponse response,
                                 @RequestParam(value = "parameterName") String parameterName,
                                 @RequestParam(value = "parameterValue") String parameterValue) {

        User user1 = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();


        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyy");
        LocalDateTime now = LocalDateTime.now();
        //Из строки parameterValue удаляем сначала все кавычки, потом все пробелы меняем на _
        String fName = parameterName + "_" + parameterValue.replaceAll("[\"]", "").replaceAll("[\\s+]", "_") + "_" + dtf.format(now);
        String fileExtension;
        boolean isFlag;

        List<Holding> holdings = getHoldingsByParameter(parameterName, parameterValue);

        if (user1.getRole().equals("ROLE_ADMIN")) {
            fileExtension = ".xlsm";
            isFlag = holdingsToExcel.createExcelWithCRUD(holdings, context, request, response, fName, fileExtension);
        } else {
            fileExtension = ".xlsx";
            isFlag = holdingsToExcel.createPlainExcel(holdings, context, request, response, fName, fileExtension);
        }

        if (isFlag) {
            String uploadPath = context.getRealPath("/resources/reports/" + fName + fileExtension);
            fileDownload(uploadPath, response, fName + fileExtension);
        } else {
            System.out.println("File not found");
        }
    }


    @GetMapping(value = "DownloadServices")
    public void downloadServices(HttpServletRequest request, HttpServletResponse response,
                                 @RequestParam(value = "inn") String inn,
                                 @RequestParam(value = "rfName") String rfName,
                                 @RequestParam(value = "period") String period) {

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyy");
        LocalDateTime now = LocalDateTime.now();

        String fName = inn + "_services_" + dtf.format(now);
        List<HoldingService> services;

        //Если период не указан, то грузим все
        if (!period.equals("")) {

            services = holdingServiceRepository.findByInnAndRfnameAndPeriod(inn, rfName, period);

        } else {

            services = holdingServiceRepository.findByInnAndRfname(inn, rfName);

        }

        boolean isFlag = holdingsToExcel.createPlainServicesExcel(
                services,
                context,
                request,
                response,
                fName,
                ".xlsx");
        if (isFlag) {
            String uploadPath = context.getRealPath("/resources/reports/" + fName + ".xlsx");
            fileDownload(uploadPath, response, fName + ".xlsx");
        } else {
        }
    }

    private void fileDownload(String fullPath, HttpServletResponse response, String fileName) {
        File file = new File(fullPath);
        final int BUFFER_SIZE = 4096;

        if (file.exists()) {
            try {
                FileInputStream inputStream = new FileInputStream(file);
                String mineType = context.getMimeType(fullPath);
                response.setContentType(mineType);
                response.setHeader("Content-disposition", "attachments; filename=" + fileName);
                OutputStream outputStream = response.getOutputStream();
                byte[] buffer = new byte[BUFFER_SIZE];
                int bytesRead = -1;

                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }

                inputStream.close();
                outputStream.close();
                file.delete();

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
