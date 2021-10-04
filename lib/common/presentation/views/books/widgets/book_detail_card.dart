import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

/// Book Detail Card
class BookDetailCard extends HookWidget {
  /// [BookDetailCard] constructor
  const BookDetailCard({
    required final this.imageUrl,
    required final this.title,
    final this.onBorrowButtonTap,
    final this.onInfoButtonTap,
    final this.onCardTap,
  });

  /// Image url
  final String imageUrl;

  /// Card title
  final String title;

  /// Borrow button callback
  final VoidCallback? onBorrowButtonTap;

  /// Info Button callback
  final VoidCallback? onInfoButtonTap;

  /// Callback for when the card overlay is tapped
  final VoidCallback? onCardTap;
  static const _maxWidth = 190.0;
  static const _maxHeight = 280.0;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final imageIsHoveredOver = useState(false);

    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: _maxWidth,
            height: _maxHeight,
            child: MouseRegion(
              onHover: (_) => imageIsHoveredOver.value = true,
              onExit: (_) => imageIsHoveredOver.value = false,
              cursor: imageIsHoveredOver.value
                  ? SystemMouseCursors.click
                  : MouseCursor.defer,
              child: Stack(
                children: [
                  Material(
                    elevation: 6,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Visibility(
                    visible: imageIsHoveredOver.value,
                    child: GestureDetector(
                      onTap: onCardTap,
                      child: Container(
                        width: _maxWidth,
                        height: _maxHeight,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: imageIsHoveredOver.value,
                    child: Positioned(
                        bottom: 0,
                        child: Container(
                          color: theme.colorScheme.onSurface,
                          width: _maxWidth,
                          height: 32,
                          child: Center(
                            child: Text(
                              'Take a peek',
                              style: theme.textTheme.headline6
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
          Text(
            title,
            style: theme.textTheme.headline6,
          ),
          Row(
            children: [
              SelectableText(
                'availability: 2',
                style: theme.textTheme.caption,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              ElevatedButton(
                onPressed: onBorrowButtonTap,
                child: const Text('Borrow'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: onInfoButtonTap,
                child: const Text('Info'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
