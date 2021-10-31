import 'package:flutter/material.dart';

import 'elapsed_time_text.dart';

class StopWatchRenderer extends StatelessWidget {
  const StopWatchRenderer({
    Key? key,
    required this.elapsed,
    required this.radius,
  }) : super(key: key);

  final Duration elapsed;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(radius),
            color: Colors.orange,
          ),
        ),
        // ElapsedTimeText(
        //   elapsed: elapsed,
        // ),
      ],
    );
  }
}
