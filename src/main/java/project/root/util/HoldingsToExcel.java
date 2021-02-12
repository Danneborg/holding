package project.root.util;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Component;
import project.root.model.Holding;
import project.root.model.HoldingService;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Component
public class HoldingsToExcel {


    public boolean createPlainServicesExcel(List<HoldingService> serviceList,
                                            ServletContext context,
                                            HttpServletRequest request,
                                            HttpServletResponse response,
                                            String fileName, String fileExtension) {
        try {
            String filePath = context.getRealPath("/resources/reports");
            File file = new File(filePath);
            boolean exists = new File((filePath)).exists();
            if (!exists) {
                new File(filePath).mkdirs();
            }
            try {
                //Забираем шаблон с отчетом
                FileInputStream inputStream = new FileInputStream(new File(filePath + "/rawTemplateService.xlsx"));
                return writeHoldingServiceExcell(serviceList, fileName, file, inputStream, fileExtension, 0);

            } catch (Exception e) {
                System.out.println("Mistake");
                e.printStackTrace();
                return false;
            }
        } catch (Exception e1) {
            e1.printStackTrace();
            return false;
        }

    }

    public boolean createPlainExcel(List<Holding> holdingList,
                                    ServletContext context,
                                    HttpServletRequest request,
                                    HttpServletResponse response,
                                    String fileName, String fileExtension) {
        try {
            String filePath = context.getRealPath("/resources/reports");
            File file = new File(filePath);
            boolean exists = new File((filePath)).exists();
            if (!exists) {
                new File(filePath).mkdirs();
            }
            try {
                //Забираем шаблон с отчетом
                FileInputStream inputStream = new FileInputStream(new File(filePath + "/rawTemplate.xlsx"));
                return writeExcell(holdingList, fileName, file, inputStream, fileExtension, 0);

            } catch (Exception e) {
                System.out.println("Mistake");
                e.printStackTrace();
                return false;
            }
        } catch (Exception e1) {
            e1.printStackTrace();
            return false;
        }

    }

    private boolean writeExcell(List<Holding> holdingList, String fileName, File file, FileInputStream inputStream, String fileExtension, int rowStart) throws IOException {
        XSSFWorkbook workbook = new XSSFWorkbook(inputStream);
        FileOutputStream fileOutputStream = new FileOutputStream(file + "/" + fileName + fileExtension);
//        //Убираем технические заголовки
//        excellData.remove(1);
        int rowsCount = 2;
        int columCount = holdingList.size();
//            HSSFWorkbook book = new HSSFWorkbook();

        Sheet sheet = workbook.getSheetAt(0);
        // Нумерация начинается с нуля
        for (Holding singleHolding : holdingList) {
            Row row = sheet.createRow(rowsCount);
            row.createCell(0).setCellValue(singleHolding.getName());
            row.createCell(1).setCellValue(singleHolding.getCode());
            row.createCell(2).setCellValue(singleHolding.getInn_hq_holding());
            row.createCell(3).setCellValue(singleHolding.getName_hq_holding());
            row.createCell(4).setCellValue(singleHolding.getRf_hq_holding());
            row.createCell(5).setCellValue(singleHolding.getMacro_region());
            row.createCell(6).setCellValue(singleHolding.getRegion());
            row.createCell(7).setCellValue(singleHolding.getClient_name());
            row.createCell(8).setCellValue(singleHolding.getInn_industry());
            row.createCell(9).setCellValue(singleHolding.getGeneral_okved());
            row.createCell(10).setCellValue(singleHolding.getAll_okved());
            row.createCell(11).setCellValue(singleHolding.getNumber_of_employees());
            row.createCell(12).setCellValue(singleHolding.getTurnover_by_inn());
            row.createCell(13).setCellValue(singleHolding.getCharges_by_inn_per_year_2019());
            row.createCell(14).setCellValue(singleHolding.getCharges_by_inn_per_year_2020());
            row.createCell(15).setCellValue(singleHolding.getDelta());
            row.createCell(16).setCellValue(singleHolding.getKam());
            row.createCell(17).setCellValue(singleHolding.getCm());
            row.createCell(18).setCellValue(singleHolding.getNumber_of_services());
            row.createCell(19).setCellValue(singleHolding.getService());
            row.createCell(20).setCellValue(singleHolding.getService_charges_per_month());
            row.createCell(21).setCellValue(singleHolding.getService_charges_per_quarter());
            row.createCell(22).setCellValue(singleHolding.getService_charges_per_year());
            row.createCell(23).setCellValue(singleHolding.getLastChgDateTime());

            rowsCount++;
        }

        // Меняем размер столбца
        for (int colCount = 1; colCount < columCount; colCount++) {

            sheet.autoSizeColumn(colCount);
        }

//       // Записываем всё в файл
        workbook.write(fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return true;
    }

    private boolean writeHoldingServiceExcell(List<HoldingService> serviceList, String fileName, File file, FileInputStream inputStream, String fileExtension, int rowStart) throws IOException {
        XSSFWorkbook workbook = new XSSFWorkbook(inputStream);
        FileOutputStream fileOutputStream = new FileOutputStream(file + "/" + fileName + fileExtension);

        int rowsCount = 1;
        int columCount = serviceList.size();
//            HSSFWorkbook book = new HSSFWorkbook();

        Sheet sheet = workbook.getSheetAt(0);
        // Нумерация начинается с нуля
        for (HoldingService service : serviceList) {

            Row row = sheet.createRow(rowsCount);
            row.createCell(0).setCellValue(service.getInn());
            row.createCell(1).setCellValue(service.getCharge_save());
            row.createCell(2).setCellValue(service.getPeriod());
            row.createCell(3).setCellValue(service.getService());
            row.createCell(4).setCellValue(service.getService2());
            row.createCell(5).setCellValue(service.getMrf_name());
            row.createCell(6).setCellValue(service.getRf_name());

            rowsCount++;
        }

        // Меняем размер столбца
        for (int colCount = 1; colCount < columCount; colCount++) {

            sheet.autoSizeColumn(colCount);
        }

//       // Записываем всё в файл
        workbook.write(fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return true;
    }

    public boolean createExcelWithCRUD(List<Holding> holdingList,
                                       ServletContext context,
                                       HttpServletRequest request,
                                       HttpServletResponse response,
                                       String fileName, String fileExtension) {

        String filePath = context.getRealPath("/resources/reports");
        System.out.println(filePath);
        File file = new File(filePath);
        boolean exists = new File((filePath)).exists();
        if (!exists) {
            new File(filePath).mkdirs();
        }
        try {
            //Забираем шаблон с отчетом
            FileInputStream inputStream = new FileInputStream(new File(filePath + "/test2.xlsm"));
            return writeExcell(holdingList, fileName, file, inputStream, fileExtension, 1);

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }
}
