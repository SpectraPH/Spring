package com.example.springboot.controller;

import com.example.springboot.domain.Page;
import com.example.springboot.repos.PageRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Optional;
import java.util.UUID;

@Controller
public class MainController {
    @Autowired
    private PageRepo pageRepo;
    @Value("${upload.path}")
    private String uploadPath;


    @GetMapping("/")
    public String test(Model model){
        Iterable<Page> pages = pageRepo.findAllByOrderByIdDesc();
        model.addAttribute("pages", pages);
        return "main";
    }

    @GetMapping("/addPage")
    public String addPage(Model mode){
        return "addPage";
    }


    @PostMapping("/addPage")
    public String add(@RequestParam String header, @RequestParam String headerText, @RequestParam String text, @RequestParam("file") MultipartFile file, Model model) throws IOException {
        Page page = new Page(header, headerText, text);
        if(file != null){
            File uploadDir = new File(uploadPath);
            if(!uploadDir.exists()){
                uploadDir.mkdir();
            }
            String fileName = UUID.randomUUID().toString() + '.' + file.getOriginalFilename();
            file.transferTo(new File(uploadPath + '/' + fileName));
            page.setFileName(fileName);
        }
        pageRepo.save(page);
        return "addPage";
    }

    @GetMapping("/page")
    public String page(@RequestParam(name="page_id", required = true) long page_id, Model model){
        Page page = pageRepo.findById(page_id).get();

        model.addAttribute("header", page.getHeader());
        model.addAttribute("headerText", page.getHeaderText());
        model.addAttribute("text", page.getText());
        model.addAttribute("fileName", page.getFileName());

        return "page";
    }
}
