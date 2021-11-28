import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Saturn extends StatelessWidget {
  const Saturn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 170,
        height: 170,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.yellow[100]),
      ),
    );
  }
}
