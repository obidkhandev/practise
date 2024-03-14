import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class SnowMan extends StatelessWidget {
  const SnowMan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomPaint(
              size: Size(500, 500),
              painter: SnowmanPainter(),
            ),
          ),
        ],
      ),
    );
  }
}


class SnowmanPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2 + 80), 60, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2 - 20), 40, paint);

    canvas.drawLine(
      Offset(size.width / 2 - 70, size.height / 2 - 40),
      Offset(size.width / 2 - 50, size.height / 2 + 50),
      paint..strokeWidth = 4,
    );

    canvas.drawLine(
      Offset(size.width / 2 + 70, size.height / 2 - 40),
      Offset(size.width / 2 + 50, size.height / 2 + 50),
      paint..strokeWidth = 4,
    );

    paint.color = Colors.black;
    canvas.drawCircle(Offset(size.width / 2 - 15, size.height / 2 - 30), 4, paint);
    canvas.drawCircle(Offset(size.width / 2 + 15, size.height / 2 - 30), 4, paint);

    paint.color = Colors.orange;
    final nosePath = Path()
      ..moveTo(size.width / 2, size.height / 2 - 30)
      ..lineTo(size.width / 2 + 10, size.height / 2 - 20)
      ..lineTo(size.width / 2 - 10, size.height / 2 - 20)
      ..close();
    canvas.drawPath(nosePath, paint);

    paint.color = Colors.black;
    final mouthPath = Path()
      ..moveTo(size.width / 2 - 20, size.height / 2 - 5)
      ..quadraticBezierTo(size.width / 2, size.height / 2 + 10, size.width / 2 + 20, size.height / 2 - 5);
    canvas.drawPath(mouthPath, paint);

    final dotPath = Path()
      ..moveTo(size.width / 2, size.height / 2 - 50)
      ..close();
    paint.strokeWidth = 5;
    paint.color = Colors.black;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2 + 60), 2, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2 + 80), 2, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2 + 100), 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


