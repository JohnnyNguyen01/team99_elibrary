import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../utils/constants.dart';

/// The Max width of the carousel
const maxCarouselWidth = 768.0;

/// The max carousel height
const maxCarouselHeight = 386.0;

/*
 * TODO: Delete the mockData below
 * 
 */
const _mockTitle = 'Chat to a librarian today';
const _mockMessage =
    'Our friendly librarians are here to help you with referencing, '
    'finding academic resources, Library access and more. 8am to 10pm  '
    'weekdays. 10am to 6pm weekends.';
final _mockSvg = SvgPicture.asset('${assetImagePath}active_support.svg');
const _mockPageCounter = 4;

/// The base carousel widget
class Carousel extends HookWidget {
  /// [Carousel] widget constructor
  const Carousel();

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    // TODO: Remove uncessary solution below [Johnny]
    final currentPageIndex = useState(0);
    final theme = useTheme();

    return SizedBox(
      width: maxCarouselWidth,
      height: maxCarouselHeight,
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: _mockPageCounter,
            onPageChanged: (index) => currentPageIndex.value = index,
            itemBuilder: (_, index) => CarouselCard(
              title: _mockTitle,
              message: _mockMessage,
              asset: _mockSvg,
              index: index,
              onPressed: () {},
            ),
          ),

          /// Page Status
          Positioned(
            bottom: 24,
            right: 16,
            child: Column(
              children: [
                // Page Status Indicator
                Row(
                  children: [
                    for (int i = 0; i < _mockPageCounter; i++)
                      Container(
                        width: 26,
                        height: 4,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        color: i == currentPageIndex.value
                            ? theme.colorScheme.primary
                            : theme.hoverColor,
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                // Page Control Buttons

                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () => controller.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      ),
                      child: const Icon(Icons.arrow_back_ios_outlined),
                    ),
                    const SizedBox(width: 4),
                    OutlinedButton(
                      onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      ),
                      child: const Icon(Icons.arrow_forward_ios_outlined),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

/// A carousel card
class CarouselCard extends HookWidget {
  /// [CarouselCard] constructor
  const CarouselCard(
      {required this.title,
      required this.message,
      required this.asset,
      required this.onPressed,
      this.index});

  /// Card title
  final String? title;

  /// Card Message
  final String? message;

  /// Asset Widget to be shown
  final Widget? asset;

  /// The index of the card instance in an array. If set, every second card
  /// will have the `messageCard`, `asset` and triange swapped.
  final int? index;

  /// The callback for the Call To Action Button
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final itemIndex = index;

    List<Widget> buildCards() {
      if (itemIndex != null && itemIndex % 2 != 0) {
        return [
          _CarouselMessageCard(
            title: title ?? '',
            message: message ?? '',
            onPressed: onPressed,
          ),
          _CarouselAssetCard(asset: asset),
        ];
      } else {
        return [
          _CarouselAssetCard(asset: asset),
          _CarouselMessageCard(
            title: title ?? '',
            message: message ?? '',
            onPressed: onPressed,
          ),
        ];
      }
    }

    return SizedBox(
      height: maxCarouselHeight,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 400,
          maxWidth: maxCarouselWidth,
        ),
        child: Stack(
          children: [
            Row(
              children: buildCards(),
            ),
            // Arrow Pointer thing
            Positioned(
              left: (itemIndex != null && itemIndex % 2 != 0) ? 370 : 332,
              top: 165,
              child: Transform.rotate(
                angle: (itemIndex != null && itemIndex % 2 != 0)
                    ? math.pi / 2
                    : -math.pi / 2,
                child: CustomPaint(
                  painter: _TrianglePainter(
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

class _CarouselAssetCard extends StatelessWidget {
  const _CarouselAssetCard({required this.asset});
  final Widget? asset;
  @override
  Widget build(BuildContext context) => SizedBox(
        width: maxCarouselWidth / 2,
        child: asset,
      );
}

class _CarouselMessageCard extends HookWidget {
  const _CarouselMessageCard(
      {required this.title, required this.message, required this.onPressed});

  final String? title;

  final String? message;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return SizedBox(
      width: maxCarouselWidth / 2,
      // Card Content
      child: Container(
        padding: const EdgeInsets.all(24),
        color: theme.colorScheme.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Chat to a librarian today',
              style: theme.textTheme.headline5
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            SelectableText(
              message ?? '',
              style: theme.textTheme.subtitle1,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: 48,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text('Chat today'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Triangle painter
class _TrianglePainter extends CustomPainter {
  _TrianglePainter(
      {this.strokeColor = Colors.black,
      this.strokeWidth = 3,
      this.paintingStyle = PaintingStyle.stroke});

  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = paintingStyle;

    canvas.drawPath(getTrianglePath(size.width, size.height), paint);
  }

  Path getTrianglePath(double x, double y) => Path()
    ..moveTo(0, y)
    ..lineTo(x / 2, 0)
    ..lineTo(x, y)
    ..lineTo(0, y);

  @override
  bool shouldRepaint(_TrianglePainter oldDelegate) =>
      oldDelegate.strokeColor != strokeColor ||
      oldDelegate.paintingStyle != paintingStyle ||
      oldDelegate.strokeWidth != strokeWidth;
}
