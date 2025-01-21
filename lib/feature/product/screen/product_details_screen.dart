import 'package:flutter/material.dart';
import 'package:shop_app/feature/product/model/product_model.dart';
import 'package:shop_app/feature/product/widget/product_app_bar.dart';
import 'package:shop_app/feature/product/widget/product_color.dart';
import 'package:shop_app/feature/product/widget/product_image.dart';
import 'package:shop_app/feature/product/widget/product_info.dart';
import 'package:shop_app/feature/product/widget/product_size.dart';

class ProductDetailsScreen extends StatelessWidget {
  
  final Product product;

  // Constructor
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productAppBar(title:product.productName),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              ProductImage(image:product.image),
              const SizedBox(height: 20),
              
             
              ProductInfo(
                productName: product.productName,
                price: product.price,
                oldPrice: product.oldPrice,
                rating: product.rating,
              ),
              const SizedBox(height: 20),

              
              const SizeSelector(),
              const SizedBox(height: 20),

             
              const ColorSelector(),
            ],
          ),
        ),
      ),
    );
  }
}
