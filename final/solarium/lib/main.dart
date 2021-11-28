import 'package:flutter/material.dart';
import 'package:solarium/solar_system.dart';

void main() {
  runApp(const Solarium());
}

class Solarium extends StatelessWidget {
  const Solarium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SolarSystem(),
    );
  }
}
