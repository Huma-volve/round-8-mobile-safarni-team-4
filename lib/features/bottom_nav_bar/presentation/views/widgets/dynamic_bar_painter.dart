import 'package:flutter/material.dart';

class DynamicBarPainter extends CustomPainter {
  final double position;

  DynamicBarPainter({required this.position});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.15)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);

    double itemWidth = size.width / 4;
    double centerX = (itemWidth * position) + (itemWidth / 2);

    // نقطة بداية الرسم العلوية ثابتة كما هي
    const double top = 25.0;

    Path path = Path();

    // بداية الرسم
    path.moveTo(20, top);
    path.lineTo(centerX - 50, top);
    path.quadraticBezierTo(centerX - 40, top, centerX - 35, top - 15);
    path.arcToPoint(
      Offset(centerX + 35, top - 15),
      radius: const Radius.circular(40),
      clockwise: true,
    );
    path.quadraticBezierTo(centerX + 40, top, centerX + 50, top);

    path.lineTo(size.width - 20, top);
    path.arcToPoint(
        Offset(size.width, top + 20), radius: const Radius.circular(15));

    // التعديل هنا: النزول لآخر الارتفاع المتاح في الـ Size (نهاية الشاشة)
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.lineTo(0, top + 20);
    path.arcToPoint(const Offset(20, top), radius: const Radius.circular(15));
    path.close();

    canvas.save();
    canvas.translate(0, 2);
    canvas.drawPath(path, shadowPaint);
    canvas.restore();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant DynamicBarPainter oldDelegate) =>
      oldDelegate.position != position;
}