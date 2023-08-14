import 'dart:math';
import 'package:diljobsapp/providers/height_provider.dart';
import 'package:diljobsapp/providers/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalIdeal extends StatelessWidget {
  const CalIdeal({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names, unused_local_variable
    var heightProvider = Provider.of<HeightProvider>(context);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Tinggi Badan (Kg)",
                style: TextStyle(fontSize: 20.0),
              ),
              Consumer<WeightProvider>(
                // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                builder: (context, WeightProvider, _) => Slider(
                  min: 1,
                  max: 100,
                  value: WeightProvider.weight.roundToDouble(),
                  divisions: 100,
                  label: WeightProvider.weight.round().toString(),
                  onChanged: (newValue) {
                    newValue = newValue.roundToDouble();
                    // ignore: avoid_print
                    print('Berat Badan: $newValue');
                    WeightProvider.weight = newValue;
                  },
                ),
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
                value: heightProvider.height.roundToDouble(),
                divisions: 200,
                label: heightProvider.height.round().toString(),
                activeColor: Colors.pinkAccent,
                inactiveColor: Colors.pinkAccent.withOpacity(0.2),
                onChanged: ((newValue) {
                  newValue = newValue.roundToDouble();
                  heightProvider.height = newValue;
                  // ignore: avoid_print
                  print("Tinggi Badan: $newValue");
                }),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Consumer<WeightProvider>(
                // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
                builder: (context, WeightProvider, child) => Text(
                  style: const TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.w700),
                  "Berat badan ideal mu: ${(WeightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
