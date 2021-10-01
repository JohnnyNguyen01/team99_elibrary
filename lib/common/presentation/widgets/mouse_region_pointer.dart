import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Custom Mouse Region widget
class MouseRegionPointer extends HookWidget {
  /// [MouseRegionPointer] constructor
  const MouseRegionPointer({
    required final this.child,
    required final this.onPressed,
  });

  /// Child widget
  final Widget? child;

  /// Handle on child tapped
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isHovered = useState(false);
    return MouseRegion(
      onHover: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      cursor: isHovered.value ? SystemMouseCursors.click : MouseCursor.defer,
      child: GestureDetector(
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
