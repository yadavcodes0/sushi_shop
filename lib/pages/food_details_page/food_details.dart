import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sushi_shop/pages/food_details_page/widgets/food_details_bottom_widget.dart';

import '../../models/food.dart';
import 'widgets/food_details_widget.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({super.key, required this.food});

  final Food food;

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  var isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: isFavorite
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  )
                : const Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          )
        ],
      ),
      body: Column(
        children: [
          // listview of food details
          FoodDetailsWidget(
            widget: widget,
          ),

          // price + quantity + add to cart button
          FoodDetailsBottomWidget(
            price: widget.food.price,
            food: widget.food,
          ),
        ],
      ),
    );
  }
}
