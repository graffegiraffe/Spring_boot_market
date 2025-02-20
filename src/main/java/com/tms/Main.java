package com.tms;

import jakarta.annotation.PostConstruct;
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
        
        // 3 DI - внедрение зависимостей @Autowire
        //3.1. через поля (плохо)
        //3.2. конструктор (хорошо)* Начиная 4.3 можно не писать autowired если один конструктор с нужными зависимостями
        //3.3. методы
        
        //Scope - логика создания бина
        //1. singleton (by default)
        //2. prototype (когда необходимо создает бин)
        //3. request
        //4. session
        //5. global-session

        User user = context.getBean(User.class);
        System.out.println(user);
    }
}

//@Configuration
//@ComponentScan("com.tms")
//@Bean
//@Component
//@Autowire
//@PreDestroy
//@PostConstruct
//@Qualifier