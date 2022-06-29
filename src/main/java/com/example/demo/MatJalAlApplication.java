package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.example.demo.FileUpload.property.FileStorageProperties;

@SpringBootApplication
@EnableConfigurationProperties(FileStorageProperties.class)
public class MatJalAlApplication {

   public static void main(String[] args) {
      SpringApplication.run(MatJalAlApplication.class, args);
   }

}