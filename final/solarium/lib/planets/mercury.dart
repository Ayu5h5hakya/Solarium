import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mercury extends StatelessWidget {
  final double? size;
  const Mercury({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 90,
      height: size ?? 90,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/mercury.png'),
        ),
      ),
    );
  }
}
