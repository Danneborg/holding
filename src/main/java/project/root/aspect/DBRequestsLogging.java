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

import java.util.Arrays;

@Aspect
@Component
public class DBRequestsLogging {

    @Autowired
    LoggerRepository loggerRepository;

    @After("execution(* project.root.repository.others.*.*(..))")
    public void afterAdviceRepository(JoinPoint joinPoint) {

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String method = joinPoint.getSignature().toShortString();
        Object[] args = joinPoint.getArgs();

        Logger logger = new Logger();
        logger.setUserName(user.getName());
        logger.setMethodName(method);
        logger.setParameters(Arrays.toString(args));
        logger.setLastchgdatetime(TimeStamp.getTimeStamp());

        loggerRepository.save(logger);

    }

}
