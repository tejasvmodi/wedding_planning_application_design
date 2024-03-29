import 'package:flutter/material.dart';

// ignore: camel_case_types
class Category_bar extends StatelessWidget {
   Category_bar({Key?key, required this.categories}) : super(key: key);
  final List<String> categories;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300,width: 1),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                                 categories[index],
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                ),
                  )),
            ),
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
