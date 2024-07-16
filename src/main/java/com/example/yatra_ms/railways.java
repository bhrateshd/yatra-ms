package com.example.yatra_ms;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class railways {
    @GetMapping("/railways")
    public String getData() {return  "Please book your railways ticket from yatra app on  40% discount" ; }
}