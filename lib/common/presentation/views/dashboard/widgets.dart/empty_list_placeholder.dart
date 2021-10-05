import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:riverpod_extension/riverpod_extension.dart';
import '../../../../utils/constants.dart';

/// Empty List Placeholder
///
/// Displays placeholder svg and specified title
class EmptyListPlaceHolder extends HookWidget {
  /// [EmptyListPlaceHolder] constructor
  const EmptyListPlaceHolder({
    this.message,
    this.width,
    this.height,
  });

  /// Message to be displayed under SVG image
  final String? message;

  /// Width of the Svg
  final double? width;

  /// Height of the Svg
  final double? height;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          '$assetImagePath/book_empty.svg',
          width: width,
          height: height,
        ),
        const SizedBox(height: 8),
        SelectableText(
          message ?? 'Nothing here, come back later',
          style: theme.textTheme.headline6,
        )
      ],
    );
  }
}
