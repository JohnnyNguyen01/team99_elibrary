import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../utils/constants.dart';
import '../../utils/hooks.dart';

/// Center Constraint Widget
///
/// A wrapper widget that keeps the content center, and provides the appropriate
/// max-width.
class CenterConstraint extends HookWidget {
  /// [CenterConstraint] constructor
  const CenterConstraint({required this.children});

  /// The child widget to be constrained
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final screenSize = useScreenSize();

    return Align(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxContentWidth),
        child: Padding(
          padding: EdgeInsets.all(screenSize.width < maxContentWidth ? 16 : 0),
          child: Column(
            children: [
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}
