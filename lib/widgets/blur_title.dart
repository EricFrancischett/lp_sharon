import 'package:flutter/material.dart';

class BlurTitle extends StatelessWidget {
  final String title;
  final Color fillColor;
  const BlurTitle({super.key, required this.title, required this.fillColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: fillColor,
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 1,
        shadows: [
          Shadow(
            color: fillColor,
            blurRadius: 7,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
