import 'package:flutter/material.dart';

Widget buildColorCircle(Color color, bool isSelected) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: color,
        ),
        if (isSelected)
          const Icon(
            Icons.check,
            color: Colors.white,
          ),
      ],
    );
  }

