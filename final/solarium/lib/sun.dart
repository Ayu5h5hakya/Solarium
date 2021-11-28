import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sun extends StatelessWidget {
  final double? size;
  const Sun({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 90,
      height: size ?? 90,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.yellow[100]),
    );
  }
}
