import 'package:flutter/material.dart';

class MyTabIndicator extends Decoration {
  final double indicatorWidth;
  final Color color;
  final BorderRadius borderRadius;
  final Color borderColor;
  final List<BoxShadow> boxShadow;

  const MyTabIndicator({
    required this.indicatorWidth,
    required this.color,
    required this.borderRadius,
    required this.borderColor,
    required this.boxShadow,
  });

  @override
  _MyPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MyPainter(this, onChanged);
  }
}

class _MyPainter extends BoxPainter {
  final MyTabIndicator decoration;

  _MyPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = offset & configuration.size!;
    final Paint paint = Paint();
    paint.color = decoration.color;
    paint.style = PaintingStyle.fill;

    final double indicatorWidth = decoration.indicatorWidth;
    final double center = rect.center.dx;
    final double left = center - (indicatorWidth / 2);
    final double right = center + (indicatorWidth / 2);
    final double top =
        rect.bottom - 2; // Adjust the top position of the indicator
    final double bottom = rect.bottom;

    final Rect indicatorRect = Rect.fromLTRB(left, top, right, bottom);
    final RRect indicatorRRect = RRect.fromRectAndCorners(
      indicatorRect,
      topLeft: Radius.circular(decoration.borderRadius.topLeft.x),
      topRight: Radius.circular(decoration.borderRadius.topRight.x),
      bottomLeft: Radius.circular(decoration.borderRadius.bottomLeft.x),
      bottomRight: Radius.circular(decoration.borderRadius.bottomRight.x),
    );

    canvas.drawRRect(indicatorRRect, paint);

    // Draw border
    if (decoration.borderColor != null) {
      final Paint borderPaint = Paint()
        ..color = decoration.borderColor
        ..style = PaintingStyle.stroke;
      canvas.drawRRect(indicatorRRect, borderPaint);
    }

    // Draw shadow
    if (decoration.boxShadow != null) {
      for (var shadow in decoration.boxShadow) {
        canvas.drawRRect(indicatorRRect.shift(shadow.offset), shadow.toPaint());
      }
    }
  }
}
