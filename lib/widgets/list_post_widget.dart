import 'package:diljobsapp/models/job_model.dart';
import 'package:diljobsapp/screens/detail_screen.dart';
import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListPost extends StatelessWidget {
  final JobModel job;
  const ListPost(this.job, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        // NOTE: NAVIGATOR STATIS
        // Navigator.pushNamed(context, RouteDiljobsapp.detail),

        // NOTE: NAVIGATOR DINAMIS
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Detail(
                job,
              ),
            ))
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 45.0,
            height: 45.0,
            margin: const EdgeInsets.only(right: 14.0),
            child: Image.network(job.companyLogo),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  job.companyName,
                  style: black400.copyWith(fontSize: 16.0),
                ),
                Text(
                  job.companyName,
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
