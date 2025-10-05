package com.sample.multiplication.table.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sample.multiplication.table.domain.MultiplicationTable;
import com.sample.multiplication.table.service.MultiplicationTableService;

@Controller
public class MultiplicationTableController {

  private final MultiplicationTableService multiplicationTableService;

  public MultiplicationTableController(MultiplicationTableService multiplicationTableService) {
    this.multiplicationTableService = multiplicationTableService;
  }

  @GetMapping("multiplication-tables/getMultiplicationTableListView.do")
  public String getMultiplicationTableListView(Model model) {
    List<MultiplicationTable> multiplicationTables = multiplicationTableService.getMultiplicationTableList();
    model.addAttribute("multiplicationTables", multiplicationTables);
    return "multiplication-tables/multiplicationTableList";
  }

  @GetMapping("multiplication-tables/getMultiplicationTableView.do")
  public String getMultiplicationTableView(@RequestParam("number") String numberStr, Model model) {
    MultiplicationTable multiplicationTable = null;

    try {
      int number = Integer.parseInt(numberStr);
      multiplicationTable = multiplicationTableService.getMultiplicationTable(number);
    } catch (NumberFormatException e) {
      // Nothing
    }

    model.addAttribute("multiplicationTable", multiplicationTable);

    return "multiplication-tables/multiplicationTableDetail";
  }

  @GetMapping("multiplication-tables/selectMultiplicationTableView.do")
  public String selectMultiplicationTableView(Model model) {
    List<Integer> numbers = multiplicationTableService.getMultiplicationTableNumbers();
    model.addAttribute("numbers", numbers);
    return "multiplication-tables/multiplicationTableSelect";
  }

}
