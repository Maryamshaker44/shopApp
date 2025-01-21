import 'package:flutter/material.dart';

Widget discount() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.red[100],
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Text(
        'خصم 15%',
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }