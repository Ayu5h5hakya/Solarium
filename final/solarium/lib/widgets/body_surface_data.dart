import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BodySurfaceData extends StatelessWidget {
  final Widget body;
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
                child: body,
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
