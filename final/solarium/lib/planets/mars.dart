import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mars extends StatelessWidget {
  const Mars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        width: 110,
        height: 110,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.yellow[100]),
      ),
    );
  }
}
