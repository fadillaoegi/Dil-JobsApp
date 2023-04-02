import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(children: [
          Container(
            width: 560,
            height: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/bg_secondhomepage.png"))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [],
          ),
        ]),
      ),
    );
  }
}
