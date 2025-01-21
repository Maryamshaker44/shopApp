import 'package:flutter/material.dart';

Widget price() {
    return const Row(
      children: [
        Text(
          '240 ر.س',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(width: 10),
        Text(
          '300 ر.س',
          style: TextStyle(
            fontSize: 14,
            decoration: TextDecoration.lineThrough,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
