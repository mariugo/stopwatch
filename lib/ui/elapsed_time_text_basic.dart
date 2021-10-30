import 'package:flutter/material.dart';

class ElapsedTimeTextBasic extends StatelessWidget {
  const ElapsedTimeTextBasic({
    Key? key,
    required this.elapsed,
  }) : super(key: key);

  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    final hundreds = (elapsed.inMilliseconds / 10) % 100;
    final seconds = elapsed.inSeconds % 60;
    final minutes = elapsed.inMinutes % 60;
    final hundredsString = hundreds.toStringAsFixed(0).padLeft(2, '0');
    final secondsString = seconds.toString().padLeft(2, '0');
    final minutesString = minutes.toString().padLeft(2, '0');
    return Text(
      '$minutesString:$secondsString:$hundredsString',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 40),
    );
  }
}
