package com.sample.multiplication.table.domain;

public class MultiplicationTableRow {

  private int multiplier;
  private int multiplicand;
  private int product;

  public MultiplicationTableRow(int multiplier, int multiplicand) {
    this.multiplier = multiplier;
    this.multiplicand = multiplicand;
    this.product = multiplier * multiplicand;
  }

  public int getMultiplier() {
    return this.multiplier;
  }

  public int getMultiplicand() {
    return this.multiplicand;
  }

  public int getProduct() {
    return this.product;
  }

}
