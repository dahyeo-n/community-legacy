package com.sample.multiplication.table.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sample.multiplication.table.domain.MultiplicationTable;

@Service
public class MultiplicationTableService {

  /**
   * Returns all multiplication tables from 2 to 9
   *
   * @return List of MultiplicationTable objects for 2~9
   */
  public List<MultiplicationTable> getMultiplicationTableList() {
    List<MultiplicationTable> multiplicationTables = new ArrayList<>();
    List<Integer> numbers = getMultiplicationTableNumbers();

    for (int number : numbers) {
      multiplicationTables.add(new MultiplicationTable(number));
    }

    return multiplicationTables;
  }

  /**
   * Returns the multiplication table for the given number
   * 
   * <p>If the number is not between 2 and 9, returns null</p>
   *
   * @param number A number between 2 and 9 (inclusive)
   * @return The MultiplicationTable object for the given number, or null
   */
  public MultiplicationTable getMultiplicationTable(int number) {
    MultiplicationTable multiplicationTable = null;

    List<Integer> numbers = getMultiplicationTableNumbers();

    if (numbers.contains(number)) {
      multiplicationTable = new MultiplicationTable(number);
    }

    return multiplicationTable;
  }

  /**
   * Returns the list of multiplication table numbers from 2 to 9
   *
   * @return List of integers from 2 to 9
   */
  public List<Integer> getMultiplicationTableNumbers() {
    List<Integer> numbers = new ArrayList<>();

    for (int i = 2; i <= 9; i++) {
      numbers.add(i);
    }

    return numbers;
  }

}
