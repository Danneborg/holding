package project.root.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import project.root.model.Logger;
import project.root.model.User;
import project.root.repository.logger.LoggerRepository;
import project.root.util.TimeStamp;

@Aspect
@Component
public class ExcelLogging {

    @Autowired
    LoggerRepository loggerRepository;

    @After("project.root.aspect.AOPExpressions.downloadExcel()")
    public void createExcell(JoinPoint joinPoint) {

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String method = joinPoint.getSignature().toShortString();
        Object[] args = joinPoint.getArgs();

        Logger logger = new Logger();
        logger.setUserName(user.getName());
        logger.setMethodName("Download excell: " + method);
        logger.setLastchgdatetime(TimeStamp.getTimeStamp());
        String param;
        //У методов разное количество параметров
        if (method.equals("MainController.downloadServices(..)")) {
            String period;

            if (args[args.length - 1].equals("")) {
                period = "All";
            } else {
                period = String.valueOf(args[args.length - 1]);
            }

            param = "[" + args[args.length - 3] + "," + args[args.length - 2] + "," + period + "]";
            logger.setParameters(param);
        } else {
            param = "[" + args[args.length - 2] + "," + args[args.length - 1] + "]";
            logger.setParameters(param);
        }

        loggerRepository.save(logger);

    }


}
