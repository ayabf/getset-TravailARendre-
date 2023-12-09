import 'package:flutter/material.dart';

class ShoppingCart {
  List<double> _prices = [];

  // Add a "total" getter
  // double get total {
  //   double sum=0.0;
  //   return _prices.fold(sum, (total, price) => total + price);
  // }
double get total {
  double sum = 0.0;
  for (double price in _prices) {
    sum += price;
  }
  return sum;
}


  // Add a "prices" setter
  set prices(List<double> newPrices) {
    if (newPrices.every((price) => price > 0)) {
      _prices = newPrices;
    } else {
      throw ArgumentError('All prices must be greater than 0');
    }
  }
}
