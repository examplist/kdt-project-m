package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "controller")
@ComponentScan(basePackages = "dao")
@ComponentScan(basePackages = "dto")
@ComponentScan(basePackages = "service")
@MapperScan("dao")
public class KdtProjectMApplication {

	public static void main(String[] args) {
		SpringApplication.run(KdtProjectMApplication.class, args);
	}

}
