import 'package:flutter/material.dart';
import 'package:shop_app/feature/shop/screen/shop_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ShopScreen(),
    );
  }
}