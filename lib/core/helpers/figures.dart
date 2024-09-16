import 'package:flutter/material.dart';

class DiamondFigure extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(215, 182, 33, 1)
      ..style = PaintingStyle.fill;
    final path = Path();
    path.moveTo(size.width * 0.5, 0);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.5,
      0,
      size.height * 0.5,
    );
    path.quadraticBezierTo(
      size.width * 0.5,
      size.width * 0.5,
      size.width * 0.5,
      size.height,
    );
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.5,
      size.width,
      size.height * 0.5,
    );
    path.quadraticBezierTo(
      size.width * 0.5,
      size.width * 0.5,
      size.width * 0.5,
      0,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class PizzaFigure extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(58, 125, 137, 1)
      ..style = PaintingStyle.fill;
    final path = Path();
    path.moveTo(size.width * 0.3, 0);
    path.quadraticBezierTo(
      -size.width * 0.5,
      size.height * 0.5,
      size.width * 0.3,
      size.height,
    );
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.3, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class TriangleFigure extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color.fromRGBO(47, 192, 255, 1)
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// Figura 3: Círculo rojo
class CircleFigure extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color.fromRGBO(249, 69, 51, 1)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class TowerFigure extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(221, 93, 69, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.1);
    path.quadraticBezierTo(
      size.width * 0.5,
      -20,
      size.width,
      size.height * 0.1,
    );
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// Figura 4: Medio círculo naranja
class OrangeHalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width / 2, size.height / 2); // Centro del círculo
    path.arcToPoint(
      Offset(0, size.height),
      radius: Radius.circular(size.width),
      clockwise: false,
    );
    path.lineTo(size.width / 2, size.height); // Cierra el medio círculo
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
