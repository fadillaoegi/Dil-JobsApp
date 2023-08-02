import 'package:flutter/material.dart';

class CalIdeal extends StatefulWidget {
  const CalIdeal({super.key});

  @override
  State<CalIdeal> createState() => _CalIdealState();
}

class _CalIdealState extends State<CalIdeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Tinggi Badan (Kg)",
                style: TextStyle(fontSize: 20.0),
              ),
              Slider(
                value: 50,
                min: 1,
                max: 100,
                onChanged: (newValue) {
                  print('Berat Badan: $newValue');
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Tinggi Badan (Cm)",
                style: TextStyle(fontSize: 20.0),
              ),
              Slider(
                min: 1,
                max: 200,
                value: 100,
                activeColor: Colors.pinkAccent,
                inactiveColor: Colors.pinkAccent.withOpacity(0.2),
                onChanged: ((value) {
                  print(value);
                }),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
                "Berat badan ideal mu: 70",
              )
            ],
          ),
        ),
      ),
    );
  }
}
