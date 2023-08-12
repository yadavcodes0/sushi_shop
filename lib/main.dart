import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/intro_page.dart';
import 'pages/menu_page/menu_page.dart';

void main() {
  runApp(
    const AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: SushiApp(),
    ),
  );
}

class SushiApp extends StatelessWidget {
  const SushiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
        '/introPage': (context) => const IntroPage(),
        '/menuPage': (context) => const MenuPage(),
      },
    );
  }
}
