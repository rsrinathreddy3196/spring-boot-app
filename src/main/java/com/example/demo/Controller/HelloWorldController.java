package com.example.demo.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping("/devops")
    public String helloWorld(){
        return "Hello welcome to devops journey!!";
    }
}
