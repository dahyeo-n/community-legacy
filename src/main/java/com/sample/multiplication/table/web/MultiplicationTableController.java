package com.sample.multiplication.table.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MultiplicationTableController {

  @GetMapping("multiplication-tables/getMultiplicationTableListView.do")
  public String getMultiplicationTableListView() {
    return "multiplication-tables/multiplicationTableList";
  }

  @GetMapping("multiplication-tables/getMultiplicationTableView.do")
  public String getMultiplicationTableView(@RequestParam("number") String number, Model model) {
    model.addAttribute("number", number);
    return "multiplication-tables/multiplicationTableDetail";
  }

  @GetMapping("multiplication-tables/selectMultiplicationTableView.do")
  public String selectMultiplicationTableView() {
    return "multiplication-tables/multiplicationTableSelect";
  }

}
