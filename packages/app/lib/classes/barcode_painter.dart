import 'dart:math';

import 'package:flutter/material.dart';

class BarcodePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    final Paint backdropPaint = Paint()..color = Colors.black54;
    final Path backdropWithCutout = Path()
      ..fillType = PathFillType.evenOdd
      ..addRect(Rect.fromCenter(
        center: center,
        width: size.width,
        height: size.height,
      ))
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(
              center: center,
              width: max(0, size.width - 50),
              height: min(100, size.height)),
          const Radius.circular(10),
        ),
      );
    canvas.drawPath(backdropWithCutout, backdropPaint);
  }

  @override
  bool shouldRepaint(BarcodePainter oldDelegate) {
    return false;
  }
}
