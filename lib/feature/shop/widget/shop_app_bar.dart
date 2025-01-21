import 'package:flutter/material.dart';
import 'package:shop_app/feature/search/screen/search_result_screen.dart';


AppBar shopAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: const Text('Shop App', style: TextStyle(color: Colors.white)),
    backgroundColor: Colors.purple,
    actions: [
      IconButton(
        icon: const Icon(Icons.shopping_cart , color: Colors.white),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.search , color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchResultsScreen(), 
            ),
          );
        },
      ),
    ],
  );
}
