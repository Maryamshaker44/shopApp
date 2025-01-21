import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}