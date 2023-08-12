import 'package:flutter/material.dart';
import 'package:sushi_shop/themes/colors.dart';

import '../../../components/button.dart';

class FoodDetailsBottomWidget extends StatefulWidget {
  final String price;
  final VoidCallback onTap;

  const FoodDetailsBottomWidget({
    super.key,
    required this.price,
    required this.onTap,
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
      quantityCount--;
    });
  }

  // increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
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
            onTap: widget.onTap,
            text: 'Add to Cart',
            padding: const EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }
}
