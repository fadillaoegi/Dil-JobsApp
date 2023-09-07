import 'package:diljobsapp/routes/routes_diljobapp.dart';
import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListPost extends StatelessWidget {
  ListPost({
    super.key,
    this.image,
    this.place,
    this.title,
    this.subtitle,
  });
  String? image;
  String? title;
  String? place;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, RouteDiljobsapp.detail)},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 45.0,
            height: 45.0,
            margin: const EdgeInsets.only(right: 14.0),
            child: Image.network(image!),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: black400.copyWith(fontSize: 16.0),
                ),
                Text(
                  subtitle!,
                  style: grey300.copyWith(fontSize: 14.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Divider(
                  color: ColordilJobsApp.garis,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
