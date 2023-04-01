import 'package:diljobsapp/themes/colors.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border.all(color: ColordilJobsApp.primary, width: 1.0),
          borderRadius: BorderRadius.circular(100.0)),
      child: const SizedBox(
        height: 120,
        width: 120,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/pict.png'),
        ),
      ),
    );
  }
}
