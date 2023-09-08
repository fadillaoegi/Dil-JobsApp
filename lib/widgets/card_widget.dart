import 'package:diljobsapp/models/category_model.dart';
import 'package:diljobsapp/screens/categories_screen.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardCustom extends StatelessWidget {
  final CategoryModel category;

  const CardCustom(this.category, {super.key});
  // String? image;
  // String? text;
  // CardCustom({super.key, this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          (context),
          MaterialPageRoute(
              builder: (context) => Categories(
                    image: category.imageUrl,
                    text: category.name,
                  ))),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(category.imageUrl), fit: BoxFit.fill),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            category.name,
            style: white400.copyWith(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
