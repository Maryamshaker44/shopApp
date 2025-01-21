import 'package:flutter/material.dart';

AppBar searchAppBar(){
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.purple),
        onPressed: () {},
      ),
      title: const Text(
        'نتائج البحث',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
}



