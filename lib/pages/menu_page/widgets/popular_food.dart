import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            "assets/salmon_eggs.png",
            height: 60,
          ),

          const SizedBox(width: 20),

          // name and price
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name
              Text(
                "Salmon Eggs",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 10),

              //price
              Text(
                "\$21.0",
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
    );
  }
}
