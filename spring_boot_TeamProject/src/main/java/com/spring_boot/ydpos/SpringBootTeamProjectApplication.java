package com.spring_boot.ydpos;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.spring_boot.ydpos"})
@MapperScan(basePackages = {"com.spring_boot.ydpos"})
public class SpringBootTeamProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootTeamProjectApplication.class, args);
	}

}
