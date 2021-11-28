import 'package:flutter/widgets.dart';
import 'package:solarium/sun.dart';

class SolarSystem extends StatefulWidget {
  const SolarSystem({Key? key}) : super(key: key);

  @override
  _SolarSystemState createState() => _SolarSystemState();
}

class _SolarSystemState extends State<SolarSystem> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Sun(),
      ],
    );
  }
}
