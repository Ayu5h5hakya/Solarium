import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solarium/models/moon.dart';

class MoonsGrid extends StatelessWidget {
  final List<Moon> data;
  const MoonsGrid({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Container(
        width: 100,
        height: 200,
        color: Colors.green,
      );
    }
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
      itemCount: data.length,
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
