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

  @GetMapping("multiplication-tables/getMultiplicationTableListView.do") // 특정 URL 요청을 받겠다고 알리는 Annotation
  public String getMultiplicationTableListView(Model model) {
    List<MultiplicationTable> multiplicationTables = multiplicationTableService.getMultiplicationTableList(); // 구구단 목록 데이터 가져옴
    // 데이터를 화면으로 전달 ("multiplicationTables"는 화면에서 사용할 변수명, multiplicationTables는 실제 데이터를 담고 있는 객체)
    model.addAttribute("multiplicationTables", multiplicationTables);
    return "multiplication-tables/multiplicationTableList"; // 렌더링할 View 파일의 경로를 문자열로 반환
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
