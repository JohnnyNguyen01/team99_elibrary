import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_extension/riverpod_extension.dart';
import '../../utils/hooks.dart';

/// A Large Alert widget
class LargeAlert extends HookWidget {
  /// [LargeAlert] Constructor
  const LargeAlert({
    this.color,
    this.message,
    this.title,
  });

  /// The alert title
  final String? title;

  /// The alert message
  final String? message;

  /// The alert's background color
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final screenSize = useScreenSize();

    return Container(
      width: screenSize.width,
      color: color ?? const Color(0xFFFEF5EB),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            title ?? '',
            style: theme.textTheme.headline6
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          SelectableText(
            message ?? '',
            style: theme.textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
