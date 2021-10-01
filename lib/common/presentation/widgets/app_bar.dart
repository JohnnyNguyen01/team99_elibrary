import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_extension/riverpod_extension.dart';
import 'package:team99_elibrary/common/presentation/widgets/mouse_region_pointer.dart';

import '../../infrastructure/routes/routes.dart';
import '../../utils/constants.dart';
import '../../utils/extensions/build_context.dart';
import '../../utils/hooks.dart';
import '../views/home_screen.dart';
import 'search_bar.dart';

final _mockRoutes = [
  'Books',
  'Services',
  'Referencing',
  'Get Help',
  'About Us',
  "What's On",
  'Visit Us'
];

/// Website Header
class WebsiteHeader extends HookWidget {
  /// [WebsiteHeader]
  const WebsiteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final screenSize = useScreenSize();
    return SliverAppBar(
      centerTitle: false,
      toolbarHeight: appBarheight,
      backgroundColor: theme.colorScheme.surface,
      title: MouseRegionPointer(
        onPressed: () => context.navigateTo(routePath: RoutePath.home),
        child: Image.asset(
          '$assetImagePath/wsu_logo.png',
          height: 64,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size(
          screenSize.width,
          navigationBarHeight + libraryStatusBarHeight + searchContainerHeight,
        ),
        child: Column(
          children: [
            // Navigation bar
            Container(
              width: screenSize.width,
              height: navigationBarHeight,
              color: theme.colorScheme.onSurface,
              // TODO: Turn into HyperLinks or TabBar [Johnny]
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (final mockRoute in _mockRoutes)
                    // TODO: Refactor into common widget [Johnny]
                    GestureDetector(
                      onTap: () =>
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
            // Library Details Status
            SizedBox(
              height: libraryStatusBarHeight,
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelectableText(
                    'Opening Hours: Temporarily Closed',
                    style: theme.textTheme.caption,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.only(right: 4),
                        decoration: const BoxDecoration(
                          // TODO: Add Success color scheme [Johnny]
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SelectableText(
                        'Chat is online',
                        style: theme.textTheme.bodyText2,
                      ),
                      const SizedBox(width: 24),
                      SelectableText(
                        'Next Event: ',
                        style: theme.textTheme.bodyText2
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SelectableText(
                          'How to build a website with Flutter')
                    ],
                  )
                ],
              ),
            ),
            // Search Bar Container
            SizedBox(
              width: screenSize.width,
              height: searchContainerHeight,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    '${assetImagePath}background.jpg',
                    width: screenSize.width,
                    height: searchContainerHeight,
                    fit: BoxFit.cover,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 768),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: SearchBar(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
