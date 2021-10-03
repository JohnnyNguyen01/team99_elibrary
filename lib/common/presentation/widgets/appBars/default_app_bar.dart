import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';
import 'package:riverpod_navigation/riverpod_navigation.dart';

import '../../../infrastructure/routes/routes.dart';
import '../../../utils/constants.dart';
import '../../../utils/extensions/build_context.dart';
import '../../../utils/hooks.dart';
import '../mouse_region_pointer.dart';
import '../user_avatar_menu.dart';

/// Default app bar to show beneath sliver
// ignore: avoid_implementing_value_types
class DefaultAppBar extends HookWidget implements PreferredSize {
  /// [DefaultAppBar] constructor
  const DefaultAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final screenSize = useScreenSize();

    final _mockRoutes = [
      'Books',
      'Services',
      'Referencing',
      'Get Help',
      'About Us',
      "What's On",
      'Visit Us'
    ];

    final navigator = useProvider(navigationProvider.notifier);
    return AppBar(
      backgroundColor: theme.colorScheme.background,
      centerTitle: false,
      title: MouseRegionPointer(
        onPressed: () => navigator.navigate(RoutePath.home),
        child: Image.asset(
          '$assetImagePath/wsu_logo.png',
          height: 64,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8),
          child: UserAvatarMenu(),
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(navigationBarHeight),
        child: Container(
          width: screenSize.width,
          height: navigationBarHeight,
          color: theme.colorScheme.onSurface,
          // TODO: Turn into HyperLinks or TabBar [Johnny]
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final mockRoute in _mockRoutes)
                // TODO: Refactor into common widget [Johnny]
                MouseRegionPointer(
                  onPressed: () =>
                      context.navigateTo(routePath: RoutePath.books),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      mockRoute,
                      style: theme.textTheme.bodyText1
                          ?.copyWith(color: theme.colorScheme.surface),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget get child => Container();

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + navigationBarHeight);
}
