import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_shop/models/food.dart';
import 'package:sushi_shop/models/shop.dart';
import 'package:sushi_shop/themes/colors.dart';

import '../../../components/button.dart';

class FoodDetailsBottomWidget extends StatefulWidget {
  final Food food;
  final String price;

  const FoodDetailsBottomWidget({
    super.key,
    required this.price,
    required this.food,
  });

  @override
  State<FoodDetailsBottomWidget> createState() =>
      _FoodDetailsBottomWidgetState();
}

class _FoodDetailsBottomWidgetState extends State<FoodDetailsBottomWidget> {
  // quantity
  int quantityCount = 0;

  // decrement quantity
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  // increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  // add to cart
  void addToCart() {
    // only add to cart if there is something in the cart
    if (quantityCount > 0) {
      // get access to shop
      final shop = context.read<Shop>();

      // add to cart
      shop.addToCart(widget.food, quantityCount);

      // let the user know it was added
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            backgroundColor: primaryColor,
            content: const Text(
              "Successfully added to cart.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              // okay button
              IconButton(
                onPressed: () {
                  // pop once to remove dialog box
                  Navigator.pop(context);

                  // pop again to go previous screen
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.done,
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          // price + quantity
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //price
              Text(
                '\$${widget.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

              // quantity
              Row(
                children: [
                  // minus button
                  Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: decrementQuantity,
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // quantity count
                  SizedBox(
                    width: 40,
                    child: Center(
                      child: Text(
                        quantityCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  // plus button
                  Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: incrementQuantity,
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 25),

          // add to cart button
          MyButton(
            icon: Icons.shopping_bag_outlined,
            borderRadius: BorderRadius.circular(40),
            onTap: addToCart,
            text: 'Add to Cart',
            padding: const EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }
}
