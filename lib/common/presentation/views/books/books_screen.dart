import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../../infrastructure/routes/routes.dart';
import '../../../utils/constants.dart';
import '../../../utils/hooks.dart';
import '../../widgets/appBars/default_app_bar.dart';
import '../../widgets/search/search_bar.dart';
import 'view_model/books_view/books_notifier.dart';
import 'widgets/book_detail_card.dart';
import 'widgets/book_pdf_previewer.dart';
import 'widgets/borrow_confirmation_dialog.dart';

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

      scrollController.addListener(() {
        if (scrollController.position.pixels >= headerHeight) {
          isHeaderHidden.value = false;
        } else {
          isHeaderHidden.value = true;
        }
      });
    }, [state]);

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: const DefaultAppBar(),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
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
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.3,
                    crossAxisCount: controller.setGridViewSize(
                        screenWidth: screenSize.width),
                    children: [
                      for (final book in state.books)
                        BookDetailCard(
                          imageUrl: book.imageUrl ?? '',
                          title: book.name ?? '',
                          numberAvailable: book.numberAvailable,
                          onBorrowButtonTap: () => showDialog<void>(
                            context: context,
                            builder: (_) => BorrowConfirmationDialog(
                              book: book,
                              onConfirmTap: () async {
                                await controller.handleBorrowButton(book: book);
                                useSnackBar(
                                  context: context,
                                  color: Colors.green,
                                  message:
                                      'Book successfully added to your account',
                                );
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          onInfoButtonTap: () {
                            context.pushRoute(
                                RoutePath.bookDetails(uid: book.uid));
                          },
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
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 600,
                maxWidth: 800,
              ),
              child: const SearchBar(),
            ),
          ],
        ),
      ),
    );
  }
}
