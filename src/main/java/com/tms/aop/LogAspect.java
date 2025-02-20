package com.tms.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.util.Date;

@Aspect
@Component
public class LogAspect {

    //JoinPoint - метод в которой применяем аспект
    //Pointcut - методЫ в которЫХ применяем аспект

    //Виды Pointcut
    //1. @Pointcut("within(com.tms.)")

    @Pointcut("within(com.tms.User)")
    public void allJoinPointsInTms() {}

    //2. Виды Advice - в каком именно месте метода выполнить код
    //2.1 @Before("allJoinPointsInTms()")
    //2.2 @After("allJoinPointsInTms()")

    @Before("allJoinPointsInTms()")
    public void logBefore(JoinPoint joinPoint) {
        System.out.println(new Date() + " INFO IN:" + joinPoint.getSignature().getDeclaringType() + ":"
                + joinPoint.getSignature().getName());
    }

    @After("allJoinPointsInTms()")
    public void logAfter(JoinPoint joinPoint) {
        System.out.println(new Date() + " INFO OUT:" + joinPoint.getSignature().getDeclaringType() + ":"
                + joinPoint.getSignature().getName());
    }
}
