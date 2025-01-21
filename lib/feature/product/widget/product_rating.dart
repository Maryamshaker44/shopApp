import 'package:flutter/material.dart';

Widget rating() {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              index < 3 ? Icons.star : Icons.star_border,
              color: Colors.amber,
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text('22 تقييم', style: TextStyle(fontSize: 12)),
      ],
    );
  }
