import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solarium/details.dart';

extension Explorer on BuildContext {
  void explore(String planet) {
    Navigator.push(
      this,
      MaterialPageRoute<void>(
        builder: (context) => const BodyDetail(),
      ),
    );
  }
}
