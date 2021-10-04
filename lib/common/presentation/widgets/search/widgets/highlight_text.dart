import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Highlighted text within a string of text
class HighlightText extends HookWidget {
  /// The [HighlightText] instance
  const HighlightText({
    final this.text,
    final this.emphasizedText = '',
    final Key? key,
  }) : super(key: key);

  /// The text to be displayed
  final String? text;

  /// The text to highlight
  final String emphasizedText;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final index =
        text?.toLowerCase().indexOf(emphasizedText.toLowerCase()) ?? 0;
    final start = index != -1 ? index : 0;
    final end = index != -1 ? index + emphasizedText.length : 0;
    return RichText(
      text: TextSpan(
        text: text?.substring(0, start),
        style: TextStyle(
          color: theme.colorScheme.primary,
        ),
        children: [
          TextSpan(
            text: text?.substring(start, end),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: text?.substring(end),
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
