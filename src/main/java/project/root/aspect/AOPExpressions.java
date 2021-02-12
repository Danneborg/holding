package project.root.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class AOPExpressions {

    @Pointcut("execution(* project.root.controller.MainController.downloadHoldings(..))")
    public void downloadHoldings(){}

    @Pointcut("execution(* project.root.controller.MainController.downloadServices(..))")
    public void downloadServices(){}

    @Pointcut("downloadHoldings() || downloadServices())")
    public void downloadExcel(){}
}
