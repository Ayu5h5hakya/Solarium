import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Earth extends StatelessWidget {
  const Earth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 120,
        height: 120,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.yellow[100]),
      ),
    );
  }
}
