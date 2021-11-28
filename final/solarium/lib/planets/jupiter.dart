import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Jupiter extends StatelessWidget {
  const Jupiter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 180,
        height: 180,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.yellow[100]),
      ),
    );
  }
}
