import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/food.dart';
import '../../food_details_page/food_details.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({
    super.key,
    required this.food,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodDetails(
            food: food,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            //image
            Image.asset(
              food.imagePath,
              height: 60,
            ),

            const SizedBox(width: 20),

            // name and price
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //name
                Text(
                  food.name,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 10),

                //price
                Text(
                  "\$${food.price}",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),

            // heart
            const Spacer(),
            const Icon(
              Icons.favorite_border,
              color: Colors.grey,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}
