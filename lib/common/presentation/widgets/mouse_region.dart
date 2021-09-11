import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// A re-usable [MouseRegionWrapper] widget that reroutes to the specified
/// link onTap.
class MouseRegionWrapper extends HookWidget {
  /// Creates an instance of [MouseRegionWrapper]
  const MouseRegionWrapper({
    required this.child,
    this.onTap,
  });

  /// The child to be wrapped
  final Widget? child;

  /// The void callback
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final isHovered = useState(false);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (_) {
        isHovered.value = true;
      },
      onExit: (_) {
        isHovered.value = false;
      },
      child: GestureDetector(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
