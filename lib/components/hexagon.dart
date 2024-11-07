import 'dart:math';

import 'package:flutter/material.dart';


class HexagonPatternPainter extends CustomPainter {
  final double hexagonSize;
  final double spacing;

  HexagonPatternPainter({
    this.hexagonSize = 100.0,
    this.spacing = 20.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.orange.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final numberOfColumns = ((size.width + spacing) / (hexagonSize + spacing)).ceil();
    final numberOfRows = ((size.height + spacing) / (hexagonSize * 0.866 + spacing)).ceil();

    for (var i = 0; i < numberOfRows; i++) {
      for (var j = 0; j < numberOfColumns; j++) {
        final path = Path();
        final centerX = j * (hexagonSize + spacing) + (i.isOdd ? (hexagonSize + spacing) / 2 : 0);
        final centerY = i * (hexagonSize * 0.866 + spacing);

        for (var k = 0; k < 6; k++) {
          final angle = k * 60 * 3.14159 / 180;
          final x = centerX + hexagonSize / 2 * cos(angle);
          final y = centerY + hexagonSize / 2 * sin(angle);
          
          if (k == 0) {
            path.moveTo(x, y);
          } else {
            path.lineTo(x, y);
          }
        }
        path.close();
        canvas.drawPath(path, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}