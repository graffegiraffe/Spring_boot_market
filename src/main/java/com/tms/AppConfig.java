package com.tms;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;


@ComponentScan("com.tms")
@Configuration
@Configurable
@EnableAspectJAutoProxy 
public class AppConfig {
    
}
