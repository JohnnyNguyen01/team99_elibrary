import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../infrastructure/routes/routes.dart';
import '../../utils/constants.dart';
import '../../utils/extensions/build_context.dart';
import '../../utils/hooks.dart';
import '../widgets/carousel.dart';
import '../widgets/center_constraint.dart';
import '../widgets/large_alert.dart';
import '../widgets/search_bar.dart';

/// App Bar Height
const appBarheight = 90.0;

/// Navigation Bar Height
const navigationBarHeight = 56.0;

/// library Status Bar Height
const libraryStatusBarHeight = 40.0;

/// Search Field Container Height
const searchContainerHeight = 220.0;

/// The app [HomeScreen]
class HomeScreen extends HookWidget {
  /// Constructs an instance of [HomeScreen]
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final screenSize = useScreenSize();
    // TODO: Remove and add proper route tabs [Johnny]
    final _mockRoutes = [
      'Books',
      'Services',
      'Referencing',
      'Get Help',
      'About Us',
      "What's On",
      'Visit Us'
    ];

    return Scaffold(
      // TODO: Add to theme
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: appBarheight,
        backgroundColor: theme.colorScheme.surface,
        title: Image.asset(
          '$assetImagePath/wsu_logo.png',
          height: 64,
        ),
        bottom: PreferredSize(
          preferredSize: Size(
            screenSize.width,
            navigationBarHeight +
                libraryStatusBarHeight +
                searchContainerHeight,
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
      ),
      body: CenterConstraint(children: [
        // Alert placeholder
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: LargeAlert(
            title: 'Lockdown service and collection hours',
            // ignore: prefer_interpolation_to_compose_strings
            message: 'Chat to a librarian 8am to 10pm weekdays, 10am to 6pm '
                'weekends. Access resources via click-and-collect, 2pm to 6pm '
                'daily. Check access conditions before coming to campus. ',
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Carousel(),
              Column(
                children: const [
                  InfoCard(
                      overlineHeading: 'News',
                      heading: 'Coronavirus libary update',
                      footer: null),
                  InfoCard(
                      overlineHeading: 'News',
                      heading: 'Coronavirus libary update',
                      footer: null),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

/// A generic card to show information
class InfoCard extends HookWidget {
  /// [InfoCard] constructor
  const InfoCard(
      {required this.overlineHeading,
      required this.heading,
      required this.footer});

  /// Heading overline
  final String? overlineHeading;

  /// Card Title
  final String? heading;

  /// Subtitle
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return Card(
      elevation: 0,
      child: Container(
        width: 324,
        height: 134,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              overlineHeading ?? '',
              style: theme.textTheme.bodyText2?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ),
            SelectableText(
              heading ?? '',
              style: theme.textTheme.headline6,
            ),
            const SizedBox(height: 4),
            footer ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
