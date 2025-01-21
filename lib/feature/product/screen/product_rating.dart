import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (starIndex) => Icon(
          starIndex < rating
              ? Icons.star
              : Icons.star_border,
          color: Colors.amber,
          size: 16,
        ),
      ),
    );
  }
}
