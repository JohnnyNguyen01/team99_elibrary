import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_extension/riverpod_extension.dart';
import 'package:team99_elibrary/common/presentation/views/faq/faq_screen.dart';
import 'package:team99_elibrary/common/presentation/views/referencing/referencing.dart';
import 'package:team99_elibrary/common/presentation/views/visit_us.dart/visit_us.dart';
import '../../utils/constants.dart';
import '../widgets/appBars/default_app_bar.dart';
import '../widgets/carousel.dart';
import '../widgets/center_constraint.dart';
import '../widgets/large_alert.dart';
import '../widgets/website_header.dart';

/// The app [HomeScreen]
class HomeScreen extends HookWidget {
  /// Constructs an instance of [HomeScreen]
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final scrollController = useScrollController();
    final isHeaderHidden = useState(true);

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels >= headerHeight) {
          isHeaderHidden.value = false;
        } else {
          isHeaderHidden.value = true;
        }
      });
    });

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: !isHeaderHidden.value ? const DefaultAppBar() : null,
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (
          final context,
          final innerIsScrolled,
        ) =>
            const [WebsiteHeader()],
        body: SingleChildScrollView(
          child: CenterConstraint(
            children: [
              // Alert placeholder
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: LargeAlert(
                  title: 'Lockdown service and collection hours',
                  message:
                      'Chat to a librarian 8am to 10pm weekdays, 10am to 6pm '
                      '6pm weekends. Access resources via click-and-collect, '
                      '2pm to daily. Check access conditions before coming to '
                      'campus. ',
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
                            heading: 'Coronavirus library update',
                            footer: null),
                        InfoCard(
                            overlineHeading: 'News',
                            heading: 'Coronavirus library update',
                            footer: null),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
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
