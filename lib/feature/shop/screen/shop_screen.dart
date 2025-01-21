import 'package:flutter/material.dart';
import 'package:shop_app/feature/bottom_nav_cubit.dart';
import 'package:shop_app/feature/product/screen/product_details_screen.dart';
import 'package:shop_app/feature/product/widget/products_list.dart';
import 'package:shop_app/feature/shop/widget/build_category_card.dart';
import 'package:shop_app/feature/shop/widget/build_product_card.dart';
import 'package:shop_app/feature/shop/widget/shop_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: shopAppBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/offer.png')),
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      '',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'الأقسام',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildCategoryCard('الإلكترونيات', Colors.purple),
                      buildCategoryCard('الأزياء', Colors.teal),
                      buildCategoryCard('المنزل والمطبخ', Colors.orangeAccent),
                      buildCategoryCard('المزيد', Colors.blueGrey),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'المنتجات',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GridView.builder(
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(
                                      product: product,
                                    )));
                      },
                      child: buildProductCard(
                        productName: product.productName,
                        price: product.price,
                        oldPrice: product.oldPrice,
                        rating: product.rating,
                        image: product.image,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          bottomNavigationBar: BlocBuilder<BottomNavCubit, int>(
            builder: (context, currentIndex) {
              return BottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (index) {
                  context.read<BottomNavCubit>().changeTab(index);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    label: 'Profile',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
