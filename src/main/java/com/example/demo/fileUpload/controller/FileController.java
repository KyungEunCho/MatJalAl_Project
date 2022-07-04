package com.example.demo.fileUpload.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.example.demo.controller.Log;
import com.example.demo.fileUpload.domain.UploadFileResponse;
import com.example.demo.fileUpload.service.FileStorageService;

import ch.qos.logback.classic.Logger;

@Log
@RestController
public class FileController {
   
    private static final Logger logger = (Logger) LoggerFactory.getLogger(FileController.class);

    @Autowired
    private FileStorageService fileStorageService;
    
    @PostMapping("/uploadFile")
    public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file) {
       System.out.println("---------------uploadFile");
      logger.info("uploadFile");
       
        String fileName = fileStorageService.storeFile(file);

        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/downloadFile/")
                .path(fileName)
                .toUriString();

        
        return new UploadFileResponse(fileName, fileDownloadUri,
                file.getContentType(), file.getSize());
    }

    @PostMapping("/uploadMultipleFiles")
    public List<UploadFileResponse> uploadMultipleFiles(
                                @RequestParam("files") MultipartFile[] files) {
        return Arrays.asList(files)
                .stream()
                .map(file -> uploadFile(file))
                .collect(Collectors.toList());
        
    }

    @GetMapping("/downloadFile/{fileName:.+}")
    public ResponseEntity<UrlResource> downloadFile(@PathVariable String fileName, 
                                               HttpServletRequest request) {
        // Load file as Resource
        UrlResource resource = fileStorageService.loadFileAsResource(fileName);

        // Try to determine file's content type
        String contentType = null;
        try {
            contentType = request.getServletContext().getMimeType(resource.getFile()
                                                           .getAbsolutePath());
        } catch (IOException ex) {
            logger.info("Could not determine file type.");
        }

        // Fallback to the default content type if type could not be determined
        if(contentType == null) {
            contentType = "application/octet-stream";
        }

        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType(contentType))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" 
                                                        + resource.getFilename() + "\"")
                .body(resource);
    }
    
    @GetMapping("/downloadFile")
   public String g() {
       return "downloadFile";
   }
    
    @RequestMapping("/uploadFile")
   public void forGues() {
      logger.info("file==========================");
   }
    
    @RequestMapping(value = "/FileUpload")
   public ModelAndView FileUpload(ModelAndView mav) {
      
      mav.setViewName("FileUpload");
      
      return mav;
   }
}