import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_shop/components/button.dart';
import 'package:sushi_shop/themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),

            // shop name
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ).animate().fadeIn(duration: const Duration(seconds: 1)).slide(),

            const SizedBox(height: 25),

            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("assets/salmon_eggs.png")
                  .animate()
                  .fadeIn(duration: const Duration(seconds: 1))
                  .slide(),
            ),

            const SizedBox(height: 25),

            // tittle
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ).animate().fadeIn(duration: const Duration(seconds: 1)).slide(),

            const SizedBox(height: 10),

            // subtitle
            Text(
              "Feel the taste of most popular Japanese food from anywhere and anytime.",
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 18,
                height: 1.8,
              ),
            ).animate().fadeIn(duration: const Duration(seconds: 1)).slide(),

            const SizedBox(height: 25),

            // get started button
            MyButton(
              text: "Get Started",
              padding: const EdgeInsets.all(20),
              icon: Icons.arrow_forward,
              onTap: () => Navigator.pushNamed(context, '/menuPage'),
              borderRadius: BorderRadius.circular(40),
            ).animate().fadeIn(duration: const Duration(seconds: 1)).slide(),
          ],
        ),
      ),
    );
  }
}
