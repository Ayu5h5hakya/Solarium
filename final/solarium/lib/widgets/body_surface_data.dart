// Copyright (c) 2021 Razeware LLC

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical
// or instructional purposes related to programming, coding, application
// development or information technology.  Permission for such use, copying,
// modification, merger, publication, distribution, sublicensing, creation of
// derivative works, or sale is expressly withheld.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../constants.dart';
import '../planets/earth.dart';
import '../planets/jupiter.dart';
import '../planets/mars.dart';
import '../planets/mercury.dart';
import '../planets/neptune.dart';
import '../planets/pluto.dart';
import '../planets/saturn.dart';
import '../planets/uranus.dart';
import '../planets/venus.dart';
import '../sun.dart';

class BodySurfaceData extends StatelessWidget {
  final String body;
  final int surfaceTemp;
  final int radius;
  const BodySurfaceData({
    Key? key,
    required this.body,
    required this.surfaceTemp,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _body = const SizedBox();
    if (body == sun_details) _body = const Sun();
    if (body == mercury_details) _body = const Mercury();
    if (body == venus_details) _body = const Venus();
    if (body == earth_details) _body = const Earth();
    if (body == mars_details) _body = const Mars();
    if (body == jupiter_details) _body = const Jupiter();
    if (body == saturn_details) _body = const Saturn();
    if (body == neptune_details) _body = const Neptune();
    if (body == uranus_details) _body = const Uranus();
    if (body == pluto_details) _body = const Pluto();

    return Container(
      margin:
          const EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0, bottom: 20),
      constraints: const BoxConstraints(maxHeight: 50, maxWidth: 300),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: _SurfaceData(
                label: 'TEMP(K)',
                value: surfaceTemp,
                alignment: CrossAxisAlignment.start,
              ),
            ),
          ),
          Expanded(
            child: OverflowBox(
              maxHeight: 90,
              child: SizedBox(
                width: 90,
                height: 90,
                child: _body,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: _SurfaceData(
                label: 'RADIUS(km)',
                value: radius,
                alignment: CrossAxisAlignment.end,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SurfaceData extends StatelessWidget {
  final String label;
  final int value;
  final CrossAxisAlignment alignment;
  const _SurfaceData(
      {Key? key,
      required this.label,
      required this.value,
      required this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: alignment,
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          '$value',
          style: const TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ],
    );
  }
}
