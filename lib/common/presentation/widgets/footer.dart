import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../utils/hooks.dart';

/// Website footer
class WebsiteFooter extends HookWidget {
  /// [WebsiteFooter] constructor
  const WebsiteFooter({Key? key}) : super(key: key);
  static const _footerHeight = 1650.0;
  @override
  Widget build(BuildContext context) {
    final screenSize = useScreenSize();
    return Container(
      width: screenSize.width,
      height: _footerHeight,
      color: const Color.fromRGBO(249, 248, 246, 1)
    );
  }
}
