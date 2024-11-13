package com.sejong.newbluebrick.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
AppConfiguration 에서 @EnableConfigurationProperties 설정 하여 application.properties 를 읽도록 선언
Dependency : spring-boot-configuration-processor
*/

@Component
@ConfigurationProperties(prefix = "file.upload.path")
public class FileUploadPathProperty {

	private String tempFile;
	private String uploadFile;

	public String getTempFile() {
		return tempFile;
	}

	
	public String getUploadFile() {
		return uploadFile;
	}


	public void setUploadFile(String uploadFile) {
		this.uploadFile = uploadFile;
	}


	public void setTempFile(String tempFile) {
		this.tempFile = tempFile;
	}
}
