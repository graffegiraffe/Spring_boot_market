package com.tms;

import org.springframework.beans.factory.FactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
    public static void main(String[] args) {
        //1. Создание контекста
/*        //Xml настройка
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-settings.xml");*/
        //Java class / Annotation
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        
        //2. Создание бина
/*        //2.1 xml
        User user = context.getBean(User.class);
        System.out.println(user);*/
        
/*        //2.2 Class (посмотри AppConfig)
        User user = context.getBean(User.class);*/
        
/*        //2.3 
        User user = context.getBean("adam", User.class);
        System.out.println(user);*/
    }
}

//@Configuration
//@ComponentScan("com.tms")
//@Bean
//@Component