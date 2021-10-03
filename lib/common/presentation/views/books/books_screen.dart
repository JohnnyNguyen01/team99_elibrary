import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../../utils/constants.dart';
import '../../../utils/hooks.dart';
import '../../widgets/website_header.dart';
import '../home_screen.dart';
import 'view_model/books_notifier.dart';
import 'widgets/book_detail_card.dart';
import 'widgets/book_pdf_previewer.dart';

/// Books Screen
class BooksScreen extends HookWidget {
  /// [BooksScreen] constructor
  const BooksScreen();

  @override
  Widget build(BuildContext context) {
    final state = useProvider(booksViewModel);
    final controller = useProvider(booksViewModel.notifier);
    final screenSize = useScreenSize();
    final scrollController = useScrollController();
    final isHeaderHidden = useState(true);

    final theme = useTheme();

    useEffect(() {
      Future.microtask(() async => controller.setBooksList());
      final headerHeight =
          navigationBarHeight + libraryStatusBarHeight + searchContainerHeight;
      scrollController.addListener(() {
        if (scrollController.position.pixels >= headerHeight) {
          isHeaderHidden.value = false;
        } else {
          isHeaderHidden.value = true;
        }
      });
    }, [state]);

    // TODO: Move to view-model
    int setGridViewSize() {
      final screenWidth = screenSize.width;
      if (screenWidth > largeScreenWidth) {
        return 6;
      } else if (screenWidth <= largeScreenWidth &&
          screenWidth >= mediumScreenWidth) {
        return 4;
      } else if (screenWidth <= mediumScreenWidth &&
          screenWidth >= smallScreenWidth) {
        return 3;
      } else {
        return 2;
      }
    }

    return Scaffold(
      appBar: !isHeaderHidden.value
          ? const PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: _InnerAppBar(),
            )
          : null,
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (final context, final innerIsScrolled) => [
          const WebsiteHeader(),
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      'Books',
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: 12),
                    GridView.count(
                      shrinkWrap: true,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.3,
                      // TODO: Make responseive 2 for phone views
                      crossAxisCount: setGridViewSize(),
                      children: [
                        for (final book in state.books)
                          BookDetailCard(
                            imageUrl: book.imageUrl ?? '',
                            title: book.name ?? '',
                            onCardTap: () async => showDialog<void>(
                              context: context,
                              builder: (final context) => BookPdfPreviewer(
                                  bookPdfUrl: book.downloadUrl ?? ''),
                            ),
                          )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InnerAppBar extends HookWidget {
  const _InnerAppBar();

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return AppBar(
      elevation: 4,
      backgroundColor: theme.colorScheme.background,
      leadingWidth: 200,
      leading: Image.asset('$assetImagePath/wsu_logo.png'),
      title: const CupertinoSearchTextField(),
    );
  }
}
