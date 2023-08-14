import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'models/shop.dart';
import 'pages/cart/cart_page.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
        child: SushiApp(),
      ),
    ),
  );
}

class SushiApp extends StatelessWidget {
  const SushiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/introPage': (context) => const IntroPage(),
        '/menuPage': (context) => const MenuPage(),
        '/cartPage': (context) => const CartPage(),
      },
    );
  }
}
