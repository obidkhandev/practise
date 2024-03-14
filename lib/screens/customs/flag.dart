import 'dart:math';

import 'package:flutter/material.dart';

class MyFlag extends StatelessWidget {
   MyFlag({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.black,
              child: CustomPaint(
                size: Size(300, 300),
                painter: FlagPainter()
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final bluePaint = Paint()..color = Colors.blue;
    final whitePaint = Paint()..color = Colors.white;
    final greenPaint = Paint()..color = Colors.green;
    final redPaint = Paint()..color = Colors.red;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height * 1 / 3), bluePaint);
    canvas.drawRect(Rect.fromLTWH(0, size.height * 1 / 3, size.width, size.height * 1 / 3), whitePaint);

    canvas.drawRect(Rect.fromLTWH(0, size.height * 2 / 3, size.width, size.height * 1 / 3), greenPaint);

    canvas.drawRect(Rect.fromLTWH(0, size.height * 1 / 3, size.width, 4), redPaint);
    canvas.drawRect(Rect.fromLTWH(0, size.height * 2 / 3 - 1, size.width, 4), redPaint);

    final double starRadius = 5;
    final List<Offset> starOffsets = [
      Offset(size.width * 0.34, size.height * 0.08),
      Offset(size.width * 0.42, size.height * 0.08),
      Offset(size.width * 0.5, size.height * 0.08),
      Offset(size.width * 0.25, size.height * 0.16),
      Offset(size.width * 0.34, size.height * 0.16),
      Offset(size.width * 0.42, size.height * 0.16),
      Offset(size.width * 0.5, size.height * 0.16),
      Offset(size.width * 0.18, size.height * 0.24),
      Offset(size.width * 0.25, size.height * 0.24),
      Offset(size.width * 0.34, size.height * 0.24),
      Offset(size.width * 0.42, size.height * 0.24),
      Offset(size.width * 0.5, size.height * 0.24),
    ];

    for (final Offset offset in starOffsets) {
      canvas.drawCircle(offset, starRadius, whitePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}