import 'package:flutter/material.dart';
import 'package:test_exercise/resources/colors.dart';

class CircleProgressBar extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = 18
      ..color = AppColor.blue
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = 80;
    canvas.drawCircle(center, radius, circle);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
