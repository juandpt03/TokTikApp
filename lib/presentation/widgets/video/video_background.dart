import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  final Widget child;
  final List<Color> colors;
  final List<double> stops;
  const VideoBackground(
      {super.key,
      this.colors = const [Colors.transparent, Colors.black87],
      this.stops = const [0.0, 1.0],
      required this.child})
      : assert(colors.length == stops.length,
            'Stops and Colors must be the same length');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              stops: stops,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: child,
      ),
    );
  }
}
