import 'dart:math';
import 'package:flutter/foundation.dart';

class Numbers {
  List<int> numbersList = [];

  void generateRandomNumber() {
    while (numbersList.length < 10000) {
      numbersList.add(Random().nextInt(1000000000) + 1);
    }
  }

  int search(int tragetNumber) {
    numbersList.sort(); //sorts in O(nlogn)

    //returns -1 if number not found, otherwise returns the index of the number in the list which is irrelevant here
    return binarySearch(numbersList, tragetNumber); //searches in O(logn)
  }
}
