import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:startup/widgets/start_content.dart';

class StartContainer extends StatelessWidget {
  const StartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 365,
        child: CustomPaint(
          painter: RPSCustomPainter(),
          child: StartContent(),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0024155, size.height * 1.0044444);
    path_0.lineTo(size.width * 0.9951691, size.height);
    path_0.lineTo(size.width, size.height * 0.2044444);
    path_0.quadraticBezierTo(size.width * 1.0148309, size.height * 0.0522000,
        size.width * 0.8961353, size.height * 0.0244444);
    path_0.quadraticBezierTo(size.width * 0.8274396, size.height * 0.0023556,
        size.width * 0.5000000, size.height * -0.0688889);
    path_0.quadraticBezierTo(size.width * 0.1699275, size.height * 0.0013111,
        size.width * 0.1053623, size.height * 0.0243111);
    path_0.quadraticBezierTo(size.width * -0.0135024, size.height * 0.0449778,
        0, size.height * 0.2200000);
    path_0.lineTo(size.width * 0.0024155, size.height * 1.0044444);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
