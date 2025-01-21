import 'package:flutter/material.dart';
import 'package:shop_app/feature/product/widget/product_card.dart';
import 'package:shop_app/feature/product/widget/products_list.dart';
import 'package:shop_app/feature/search/widget/search.dart';
import 'package:shop_app/feature/search/widget/search_app_bar.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: searchAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Search(),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(
                      productName: product.productName,
                      price: product.price,
                      oldPrice: product.oldPrice,
                      rating: product.rating,
                      image: product.image,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
