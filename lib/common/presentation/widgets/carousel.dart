import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../utils/constants.dart';

// TODO : Refactor sizes

/// A carousel widget
class Carousel extends HookWidget {
  /// [Carousel] widget constructor
  const Carousel();

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();

    return SizedBox(
      width: 768,
      height: 386,
      child: PageView.builder(
          itemCount: 2,
          itemBuilder: (_, index) {
            if (controller.initialPage == 0) {}
            return const CarouselCard();
          }),
    );
  }
}

/// A carousel card
class CarouselCard extends HookWidget {
  /// [CarouselCard] constructor
  const CarouselCard();
  static const _carouselCardMaxWidth = 768.0;
  @override
  Widget build(BuildContext context) {
    final theme = useTheme();

    return SizedBox(
      height: 386,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 400,
          maxWidth: _carouselCardMaxWidth,
        ),
        child: Stack(
          children: [
            Row(
              children: [
                SizedBox(
                  width: _carouselCardMaxWidth / 2,
                  // Card Content
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    color: theme.colorScheme.surface,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          'Chat to a today',
                          style: theme.textTheme.headline5
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 16),
                        SelectableText(
                          'Our friendly librarians are here to help you with referencing, finding academic resources, Library access and more. 8am to 10pm weekdays. 10am to 6pm weekends.',
                          style: theme.textTheme.subtitle1,
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Chat today'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Card Image
                SizedBox(
                  width: _carouselCardMaxWidth / 2,
                  child:
                      SvgPicture.asset('${assetImagePath}active_support.svg'),
                ),
              ],
            ),
            // Arrow Pointer thing
            Positioned(
              left: 370,
              top: 165,
              child: Transform.rotate(
                angle: math.pi / 2,
                child: CustomPaint(
                  painter: TrianglePainter(
                      strokeColor: theme.colorScheme.surface,
                      strokeWidth: 10,
                      paintingStyle: PaintingStyle.fill),
                  child: const SizedBox(
                    height: 40,
                    width: 64,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// Triangle painter
class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  TrianglePainter(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) {
    return Path()
      ..moveTo(0, y)
      ..lineTo(x / 2, 0)
      ..lineTo(x, y)
      ..lineTo(0, y);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.paintingStyle != paintingStyle ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
