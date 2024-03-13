import 'package:flutter/material.dart';

class Mood extends StatelessWidget {
  const Mood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomPaint(
                  size: Size(170, 170),
                  painter: Smile(),
                ),
                CustomPaint(
                  size: Size(170, 170),
                  painter: Sad(),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomPaint(
                  size: Size(170, 170),
                  painter: MoodPainter(),
                ),
                CustomPaint(
                  size: Size(170, 170),
                  painter: BadPainter(),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class Smile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke..strokeWidth = 4;

    // Draw face
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    // Draw eyes
    paint.color = Colors.black;
    canvas.drawCircle(Offset(size.width / 2 - 20, size.height / 2 - 20), 10, paint);
    canvas.drawCircle(Offset(size.width / 2 + 20, size.height / 2 - 20), 10, paint);

    // Draw mouth (smile)
    final smilePath = Path()
      ..moveTo(size.width / 2 - 30, size.height / 2 + 20)
      ..quadraticBezierTo(size.width / 2, size.height / 2 + 40, size.width / 2 + 30, size.height / 2 + 20);
    canvas.drawPath(smilePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class Sad extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke..strokeWidth = 4;

    // Draw face
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    // Draw eyes
    paint.color = Colors.black;
    canvas.drawCircle(Offset(size.width / 2 - 20, size.height / 2 - 20), 10, paint);
    canvas.drawCircle(Offset(size.width / 2 + 20, size.height / 2 - 20), 10, paint);

    // Draw mouth (sad smile)
    final sadSmilePath = Path()
      ..moveTo(size.width / 2 - 30, size.height / 2 + 30)
      ..quadraticBezierTo(size.width / 2, size.height / 2 + 10, size.width / 2 + 30, size.height / 2 + 30);
    canvas.drawPath(sadSmilePath, paint);

    // final sadPath = Path()..moveTo(size.width / 2 - 50, size.height / 2 + 10)..lineTo(size.width / 2, size.height / 2 );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MoodPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke..strokeWidth = 4;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    paint.color = Colors.black;
    canvas.drawCircle(Offset(size.width / 2 - 20, size.height / 2 - 20), 10, paint);
    canvas.drawCircle(Offset(size.width / 2 + 20, size.height / 2 - 20), 10, paint);

    canvas.drawLine(Offset(size.width / 2 - 30, size.height -50), Offset(size.width / 2 + 30, size.height - 50), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class BadPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.brown
      ..style = PaintingStyle.stroke..strokeWidth = 4;

    // Draw face
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    // Draw eyes
    paint.color = Colors.black;
    canvas.drawCircle(Offset(size.width / 2 - 30, size.height / 2 - 20), 10, paint); // Left eye
    canvas.drawCircle(Offset(size.width / 2 + 30, size.height / 2 - 20), 10, paint); // Right eye

    // Draw mouth (frown)
    final mouthPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    canvas.drawLine(Offset(size.width / 2 - 20, size.height / 2 + 30), Offset(size.width / 2 + 20, size.height / 2 + 30), mouthPaint);

    // Draw eyebrows (downturned)
    final eyebrowsPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    canvas.drawLine(Offset(size.width / 2 - 20, size.height / 2 - 40), Offset(size.width / 2 - 10, size.height / 2 - 30), eyebrowsPaint);
    canvas.drawLine(Offset(size.width / 2 + 20, size.height / 2 - 40), Offset(size.width / 2 + 10, size.height / 2 - 30), eyebrowsPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}



