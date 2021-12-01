import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AstroPageIndicator extends StatelessWidget {
  final Function(int)? onPageChanged;
  final int currentPlanet;
  const AstroPageIndicator(
      {Key? key, required this.currentPlanet, this.onPageChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(0);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(1);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(2);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(3);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(4);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(5);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(6);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(7);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(8);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(9);
          },
        ),
      ],
    );
  }
}
