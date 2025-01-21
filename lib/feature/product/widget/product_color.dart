import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      const Color.fromARGB(255, 54, 43, 43),
      const Color.fromARGB(255, 240, 173, 168),
      const Color.fromARGB(255, 157, 179, 197),
      const Color.fromARGB(255, 202, 163, 149),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'اختر اللون',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          children: colors
              .map((color) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: _buildColorCircle(color, color == const Color.fromARGB(255, 54, 43, 43)),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildColorCircle(Color color, bool isSelected) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: color,
        ),
        if (isSelected) const Icon(Icons.check, color: Colors.white),
      ],
    );
  }
}
