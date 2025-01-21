import 'package:flutter/material.dart';
import 'package:shop_app/feature/product/widget/product_info.dart';

Widget buildProductCard({
  required String productName,
  required String price,
  required String oldPrice,
  required double rating,
  required String image,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      children: [
        
        Image.asset(image, width: 120, height: 120, fit: BoxFit.cover),
        
        
        ProductInfo(
          productName: productName,
          price: price,
          oldPrice: oldPrice,
          rating: rating,
        ),
      ],
    ),
  );
}
