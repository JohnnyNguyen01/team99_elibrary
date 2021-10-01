import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../widgets/app_bar.dart';
import 'view_model/books_notifier.dart';
import 'widgets/book_detail_card.dart';

/// Books Screen
class BooksScreen extends HookWidget {
  /// [BooksScreen] constructor
  const BooksScreen();

  @override
  Widget build(BuildContext context) {
    final state = useProvider(booksViewModel);
    final controller = useProvider(booksViewModel.notifier);
    final theme = useTheme();

    useEffect(() {
      Future.microtask(() async => controller.setBooksList());
    }, [state]);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (final context, final innerIsScrolled) =>
            [const WebsiteHeader()],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 16,
            ),
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
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.5,
                  // TODO: Make responseive 2 for phone views
                  crossAxisCount: 6,
                  children: [
                    for (final book in state.books)
                      BookDetailCard(
                        imageUrl: book.imageUrl ?? '',
                        title: book.name ?? '',
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
