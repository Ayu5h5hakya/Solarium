import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Neptune extends StatelessWidget {
  const Neptune({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 100,
        height: 100,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.yellow[100]),
      ),
    );
  }
}
