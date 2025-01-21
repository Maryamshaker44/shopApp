import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'أدخل كلمة البحث..',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          icon: const Icon(Icons.filter_list, color: Colors.purple),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.sort, color: Colors.purple),
          onPressed: () {},
        ),
      ],
    );
  }
}

  
