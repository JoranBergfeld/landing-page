package com.joranbergfeld.info_page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InfoController {

    @GetMapping
    public String landingPage() {
        return "info";
    }

}
