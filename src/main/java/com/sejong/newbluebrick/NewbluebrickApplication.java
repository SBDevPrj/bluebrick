package com.sejong.newbluebrick;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.sejong.newbluebrick.config.FileUploadPathProperty;


@SpringBootApplication
@EnableJpaRepositories
@EnableConfigurationProperties(FileUploadPathProperty.class)
public class NewbluebrickApplication {

	public static void main(String[] args) {
		SpringApplication.run(NewbluebrickApplication.class, args);
	}
	

}

