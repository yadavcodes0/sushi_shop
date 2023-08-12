import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/button.dart';
import '../../../themes/colors.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get 32% promo",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              // redeem button
              MyButton(
                text: "Buy Food",
                borderRadius: BorderRadius.circular(30),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
                icon: Icons.arrow_forward,
                onTap: () {},
              ),
            ],
          ),
          // image
          Image.asset("assets/many_sushi.png", height: 100),
        ],
      ),
    );
  }
}
