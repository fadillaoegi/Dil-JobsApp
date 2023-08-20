import 'dart:convert';

import 'package:diljobsapp/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryProvider with ChangeNotifier {
  Future<List<CategoryModel>> getCategories() async {
    try {
      var response = await http
          .get(Uri.parse('https://future-jobs-api.vercel.app/categories'));

      // ignore: avoid_print
      print(response.statusCode);
      // ignore: avoid_print
      print(response.body);

      if (response.statusCode == 200) {
        List<CategoryModel> categories = [];
        List parsedJson = jsonDecode(response.body);

        // ignore: avoid_function_literals_in_foreach_calls
        parsedJson.forEach((category) {
          categories.add(CategoryModel.fromJson(category));
        });

        return categories;
      } else {
        return [];
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);

      return [];
    }
  }
}
