import 'dart:convert';

import 'package:diljobsapp/apis/api_config.dart';
import 'package:diljobsapp/models/job_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JobProvider with ChangeNotifier {
  Future<List<JobModel>> getJobs() async {
    try {
      var response = await http.get(Uri.parse(ApiConfigDilJob.apiGetJob));

      // ignore: avoid_print
      // print(response);
      // ignore: avoid_print
      // print(response.statusCode);

      if (response.statusCode == 200) {
        // ignore: unused_local_variable
        List<JobModel> jobs = [];
        // ignore: unused_local_variable
        List parseJson = jsonDecode(response.body);

        for (var job in parseJson) {
          jobs.add(JobModel.fromJson(job));
        }

        // NOTE: OLD
        // parseJson.forEach((job) {
        //   jobs.add(JobModel.fromJson(job));
        // });

        return jobs;
      } else {
        return [];
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return [];
    }
  }

  Future<List<JobModel>> getJobsByCategory(String category) async {
    try {
      var response = await http.get(Uri.parse(
          "https://future-jobs-api.vercel.app/jobs?category=$category"));

      // ignore: avoid_print
      // print(response);
      // ignore: avoid_print
      // print(response.statusCode);

      if (response.statusCode == 200) {
        // ignore: unused_local_variable
        List<JobModel> jobs = [];
        // ignore: unused_local_variable
        List parseJson = jsonDecode(response.body);

        for (var job in parseJson) {
          jobs.add(JobModel.fromJson(job));
        }

        // NOTE: OLD
        // parseJson.forEach((job) {
        //   jobs.add(JobModel.fromJson(job));
        // });

        return jobs;
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
