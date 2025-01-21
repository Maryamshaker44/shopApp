import 'package:flutter/material.dart';

AppBar productAppBar({String? title}) {
  return AppBar(
    backgroundColor: Colors.purpleAccent,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.white),
      onPressed: () {},
    ),
    title: Text(
      title!,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        icon: const Icon(Icons.shopping_cart, color: Colors.white),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.search, color: Colors.white),
        onPressed: () {},
      ),
    ],
  );
}
