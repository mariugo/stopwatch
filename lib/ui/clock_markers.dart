import 'dart:math';

import 'package:flutter/material.dart';

class ClockSecondsTickMarker extends StatelessWidget {
  const ClockSecondsTickMarker({
    Key? key,
    required this.seconds,
    required this.radius,
  }) : super(key: key);

  final int seconds;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final color = seconds % 5 == 0 ? Colors.white : Colors.grey[700];
    const width = 2.0;
    const height = 12.0;

    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2, 0)
        ..rotateZ(2 * pi * (seconds / 60))
        ..translate(0, radius - height / 2, 0),
      child: Container(
        height: height,
        width: width,
        color: color,
      ),
    );
  }
}
