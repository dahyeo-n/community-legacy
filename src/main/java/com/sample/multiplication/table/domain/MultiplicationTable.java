package com.sample.multiplication.table.domain;

import java.util.ArrayList;
import java.util.List;

public class MultiplicationTable {

  private int number;
  private List<MultiplicationTableRow> rows;

  public MultiplicationTable(int number) {
    this.number = number;
    this.rows = new ArrayList<>();

    for (int i = 1; i <= 9; i++) {
      this.rows.add(new MultiplicationTableRow(number, i));
    }
  }

  public int getNumber() {
    return this.number;
  }

  public List<MultiplicationTableRow> getRows() {
    return this.rows;
  }

}
