import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final icon;
  final categoryName;
  const CategoryCard(
      {super.key, required this.icon, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
