
package com.example.yatra_ms;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class bus {
    @GetMapping("/bus")
    public String getData() {return  "Please book your bus traval ticket from yatra app on  33% discount" ; }
}