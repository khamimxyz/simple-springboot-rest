package xyz.khamim.springboot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class SimpleController {

    @GetMapping("/hello")
    public String hello() {

        return "Hello, Spring Boot 1";
    }

    @GetMapping("/hi")
    public String hi() {

        return "Hi, Spring Boot for jenkins";
    }
}
