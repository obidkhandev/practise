import 'package:flutter/material.dart';

class WavePage extends StatelessWidget {
  const WavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          size: Size(300, 300),
          painter: MyPainter(),
        ),
      ),
    );
  }
}



class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.orange;
    paint.strokeWidth = 2.0;

    var path = Path();

    path.moveTo(0 , 200);
    path.quadraticBezierTo(35, 270, 80, 190);
    path.quadraticBezierTo(120, 130, 180, 200);
    path.quadraticBezierTo(230, 260, 220, 250);
    path.quadraticBezierTo(285, 320, 300, 220);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}