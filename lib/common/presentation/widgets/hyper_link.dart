import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

/// A re-usable [HyperLink] widget that reroutes to the specified
/// link onTap.
class HyperLink extends HookWidget {
  /// Creates an instance of [HyperLink]
  const HyperLink({required this.label, this.link, this.onTap});

  /// The link's label
  final String label;

  /// The link to route to on press
  final String? link;

  /// The onTap callback
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isHovered = useState(false);
    final theme = useTheme();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (_) {
        isHovered.value = true;
      },
      onExit: (_) {
        isHovered.value = false;
      },
      child: GestureDetector(
        onTap: () {},
        child: Text(
          label,
          style: theme.textTheme.bodyText2?.copyWith(
            decoration: TextDecoration.underline,
            color: isHovered.value
                ? theme.colorScheme.secondaryVariant
                : theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
