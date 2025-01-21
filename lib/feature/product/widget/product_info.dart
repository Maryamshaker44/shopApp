import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String productName;
  final String price;
  final String oldPrice;
  final double rating;

  const ProductInfo({
    super.key,
    required this.productName,
    required this.price,
    required this.oldPrice,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productName,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          price,
          style: const TextStyle(fontSize: 20, color: Colors.red),
        ),
        const SizedBox(height: 5),
        Text(
          oldPrice,
          style: const TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.lineThrough),
        ),
        const SizedBox(height: 10),
        Text(
          'Rating: $rating/5',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
