import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/button_fill_widget.dart';
import 'package:diljobsapp/widgets/list_detail_widget.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        padding: const EdgeInsets.only(top: 60.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                    margin: const EdgeInsets.only(bottom: 30.0),
                    width: 60.0,
                    height: 60.0,
                    child: Image.asset("assets/images/google-icon.png")),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Front-End Developer",
                      style: black500.copyWith(fontSize: 20.0),
                    ),
                    Text(
                      "Google, Inc • Jakarta",
                      style: grey300.copyWith(fontSize: 14.0),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "About the job",
                style: black400.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListDetail(
                    text: "Full-Time On Site",
                  ),
                  ListDetail(
                    text: "Start at Rp.18,000 per month",
                  ),
                ],
              ),
              const SizedBox(
                height: 21.0,
              ),
              Text(
                "Qualifications",
                style: black400.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListDetail(
                    text:
                        "Candidate must possess at least a \nachelor's Degree.",
                  ),
                  ListDetail(
                    text:
                        "Able to use Microsoft Office and Google \nbased service.",
                  ),
                  ListDetail(
                      text:
                          "Have an excellent time management, \ngood at organized and details"),
                ],
              ),
              const SizedBox(
                height: 21.0,
              ),
              Text(
                "Responsibilities",
                style: black400.copyWith(fontSize: 14.0),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListDetail(
                    text:
                        "Initiate and promote any programs, events, \ntraining, or activities.",
                  ),
                  ListDetail(
                    text:
                        "Assessing and anticipating needs and \ncollaborate with Division.",
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Center(
                child: ButtonFill(
                  color: ColordilJobsApp.primary,
                  text: "Apply for Job",
                  fontColor: ColordilJobsApp.white,
                  onpress: () {},
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Message Recruiter",
                      style: grey300.copyWith(fontSize: 14.0),
                    )),
              ),
              const SizedBox(
                height: 35.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
