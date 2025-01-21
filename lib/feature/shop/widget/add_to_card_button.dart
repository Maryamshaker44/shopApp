import 'package:flutter/material.dart';

class AddToCardButton extends StatelessWidget {
  const AddToCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.shopping_cart),
      label: const Text('إضافة إلى السلة',style: TextStyle(color: Colors.white),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purpleAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}