package com.example.demo;


import org.springframework.web.bind.annotation.GetMapping;

public class HealthController {
    @GetMapping("/health")
    public String Health(){
        return "Healthy";
    }
}