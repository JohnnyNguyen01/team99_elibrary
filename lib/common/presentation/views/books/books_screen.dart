import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';
import 'view_model/books_notifier.dart';

/// Books Screen
class BooksScreen extends HookWidget {
  /// [BooksScreen] constructor
  const BooksScreen();

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final state = useProvider(booksViewModel);
    final controller = useProvider(booksViewModel.notifier);

    useEffect(() {
      Future.microtask(() async => controller.setBooksList());
    }, [state]);

    // print(state.books);
    return Scaffold(
      body: Center(
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(8),
            width: 250,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: state.books.isNotEmpty
                  ? [
                      Image.network(state.books[0].imageUrl ?? ''),
                      Text(
                        state.books[0].name ?? '',
                        style: theme.textTheme.headline5,
                      ),
                    ]
                  : [],
            ),
          ),
        ),
      ),
    );
  }
}
