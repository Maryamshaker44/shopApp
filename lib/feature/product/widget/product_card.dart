import 'package:flutter/material.dart';
import 'package:shop_app/feature/product/screen/product_rating.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String price;
  final String oldPrice;
  final double rating;
  final String image;

  const ProductCard({super.key, 
    required this.productName,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            
            Image.asset(
              image,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        oldPrice,
                        style: const TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  ProductRating(rating: rating),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.purple),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

