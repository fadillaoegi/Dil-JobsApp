import 'package:diljobsapp/screens/categories_screen.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardCustom extends StatelessWidget {
  String? image;
  String? text;
  CardCustom({super.key, this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          (context),
          MaterialPageRoute(
              builder: (context) => Categories(
                    image: image,
                    text: text,
                  ))),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image!), fit: BoxFit.fill),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            text!,
            style: white400.copyWith(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
