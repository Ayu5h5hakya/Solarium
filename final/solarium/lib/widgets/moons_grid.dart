import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MoonsGrid extends StatelessWidget {
  const MoonsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
      itemCount: 70,
      itemBuilder: (BuildContext ctx, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(15),
          ),
          child: FittedBox(
            child: Text('sefefeddsfsadasdasd'),
          ),
        );
      },
    );
  }
}
