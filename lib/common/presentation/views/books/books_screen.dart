import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../widgets/app_bar.dart';
import 'view_model/books_notifier.dart';

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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            Text(
              'Books',
              style: theme.textTheme.headline4,
            ),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 24,
                mainAxisExtent: 560,
              ),
              itemCount: state.books.length,
              itemBuilder: (final _, final index) {
                final book = state.books[index];
                return BookDetailCard(
                  imageUrl: book.imageUrl ?? '',
                  title: book.name ?? '',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// Book Detail Card
class BookDetailCard extends HookWidget {
  /// [BookDetailCard] constructor
  const BookDetailCard({
    required final this.imageUrl,
    required final this.title,
  });

  /// Image url
  final String imageUrl;

  /// Card title
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return Card(
      elevation: 2,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
            Text(
              title,
              style: theme.textTheme.bodyText1,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: Text('Borrow'),
            ),
          ],
        ),
      ),
    );
  }
}
