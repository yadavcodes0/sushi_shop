import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_shop/models/shop.dart';

import '../../../components/food_tile.dart';
import '../../food_details_page/food_details.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  void navigateToFoodDetails(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetails(
          food: foodMenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Expanded(
      child: ListView.builder(
        itemCount: foodMenu.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => FoodTile(
          food: foodMenu[index],
          onTap: () => navigateToFoodDetails(index),
        ),
      ),
    );
  }
}
