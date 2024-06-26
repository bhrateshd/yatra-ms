
package com.example.yatra_ms;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class travals {
    @GetMapping("/travals")
    public String getData() {return  "Please book your traval ticket from yatra app on  30% discount" ; }
}