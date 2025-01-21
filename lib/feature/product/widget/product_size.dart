import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final sizes = ['S', 'L', 'XL', 'XXL', 'XXXL'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'اختر المقاس',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 10,
          children: sizes
              .map(
                (size) => ChoiceChip(
                  label: Text(size),
                  selected: size == 'S',
                  onSelected: (selected) {},
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}