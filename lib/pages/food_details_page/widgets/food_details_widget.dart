import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../food_details.dart';

class FoodDetailsWidget extends StatefulWidget {
  const FoodDetailsWidget({
    super.key,
    required this.widget,
  });

  final FoodDetails widget;

  @override
  State<FoodDetailsWidget> createState() => _FoodDetailsWidgetState();
}

class _FoodDetailsWidgetState extends State<FoodDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
            // image
            Image.asset(
              widget.widget.food.imagePath,
              height: 200,
            ),

            const SizedBox(height: 25),

            // rating
            Row(
              children: [
                // star icon
                Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                ),

                const SizedBox(width: 5),

                // rating number
                Text(
                  widget.widget.food.rating,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // food name
            Text(
              widget.widget.food.name,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
              ),
            ),

            const SizedBox(height: 25),

            // description
            Text(
              "Description",
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Delicately sliced, fresh Atlantic salmon drapes elegantly over a pillow of perfectly seasoned sushi rice. Its vibrant hue and buttery texture promise an exquisite melt-in-your-mouth experience. Paired with a whisper of wasabi and a side of traditional pickled ginger, our salmon sushi is an ode to the purity and simplicity of authentic Japanese flavors. Indulge in the ocean's bounty with each savory bite.",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
                height: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
