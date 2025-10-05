package com.sample.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

  /**
   * Handle requests for the main page
   * 
   * @return The logical name of the main page JSP view
   */
  @GetMapping("/mainView.do")
  public String main() {
    return "main/main";
  }

}
