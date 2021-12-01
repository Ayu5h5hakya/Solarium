import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solarium/constants.dart';
import 'package:solarium/planets/earth.dart';
import 'package:solarium/planets/jupiter.dart';
import 'package:solarium/planets/mars.dart';
import 'package:solarium/planets/mercury.dart';
import 'package:solarium/planets/neptune.dart';
import 'package:solarium/planets/pluto.dart';
import 'package:solarium/planets/saturn.dart';
import 'package:solarium/planets/uranus.dart';
import 'package:solarium/planets/venus.dart';
import 'package:solarium/sun.dart';

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
      constraints: BoxConstraints(maxHeight: 50, maxWidth: 300),
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
                label: "TEMP",
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
                label: "RADIUS",
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
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "$value",
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ],
    );
  }
}
