import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pluto extends StatelessWidget {
  const Pluto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 90,
        height: 90,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.yellow[100]),
      ),
    );
  }
}
