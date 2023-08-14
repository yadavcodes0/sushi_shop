import 'package:flutter/material.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    // salmon sushi
    Food(
      name: "Salmon Sushi",
      price: "21.0",
      imagePath: "assets/salmon_sushi.png",
      rating: "4.9",
    ),

    // tuna
    Food(
      name: "Tuna",
      price: "24.0",
      imagePath: "assets/tuna.png",
      rating: "4.5",
    ),

    Food(
      name: "Salmon Eggs",
      price: "21.0",
      imagePath: "assets/salmon_eggs.png",
      rating: "4.7",
    ),
  ];

  // customer cart
  final List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add food to cart
  void addToCart(Food foodItem, int quantity) {
    for (var i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove food from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
