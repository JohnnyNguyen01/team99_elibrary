import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../../domain/models/book/book.dart';
import '../../../utils/hooks.dart';
import '../../widgets/appBars/default_app_bar.dart';
import '../../widgets/center_constraint.dart';
import 'view_model/book_details/book_details_view_model.dart';
import 'widgets/book_pdf_previewer.dart';
import 'widgets/borrow_confirmation_dialog.dart';

/// Book Detail Screen
class BookDetailScreen extends HookWidget {
  /// [BookDetailScreen] constructor
  const BookDetailScreen({required final this.bookUid});

  ///book uid
  final String? bookUid;

  @override
  Widget build(BuildContext context) {
    final state = useProvider(bookDetailViewModelProvider);
    final viewController = useProvider(bookDetailViewModelProvider.notifier);

    useEffect(() {
      Future.microtask(() async {
        await viewController.initialiseState(bookUid: bookUid ?? '');
      });
    }, [state]);

    return Scaffold(
      appBar: const DefaultAppBar(),
      body: SingleChildScrollView(
        child: CenterConstraint(children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _BuildBookSectionColumn(book: state.book),
                const SizedBox(width: 40),
                _BuildDetailsSectionColumn(book: state.book)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class _BuildBookSectionColumn extends HookWidget {
  const _BuildBookSectionColumn({required this.book});

  final Book? book;
  static const _borderRadius = 16.0;
  static const _maxWidth = 256.0;
  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final viewController = useProvider(bookDetailViewModelProvider.notifier);

    if (book != null) {
      return Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: _maxWidth,
              maxHeight: 386,
            ),
            child: Material(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(_borderRadius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(book?.imageUrl ?? ''),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: _maxWidth,
            height: 40,
            child: ElevatedButton(
              onPressed: book?.downloadUrl != null
                  ? () => showDialog<void>(
                        context: context,
                        builder: (context) => BookPdfPreviewer(
                            bookPdfUrl: book?.downloadUrl ?? ''),
                      )
                  : null,
              child: Text(
                'Preview',
                style: theme.textTheme.headline6?.copyWith(
                  color: theme.colorScheme.surface,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: _maxWidth,
            height: 40,
            child: !(book != null && book!.numberAvailable > 0)
                ? Text(
                    'Out of stock',
                    style: theme.textTheme.caption,
                    textAlign: TextAlign.center,
                  )
                : ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (_) => const Color(0xffffe082),
                      ),
                    ),
                    onPressed: () async => showDialog<void>(
                      context: context,
                      builder: (context) => BorrowConfirmationDialog(
                        book: book!,
                        onConfirmTap: () async {
                          await viewController.handleBorrowButton();
                          useSnackBar(
                            context: context,
                            message: 'Book added successfully',
                            color: const Color(0xFF66BB6A),
                          );
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    child: Text(
                      'Borrow',
                      style: theme.textTheme.headline6,
                    ),
                  ),
          ),
          const SizedBox(height: 6),
          Text(
            'Available Copies: ${book?.numberAvailable}',
            style: theme.textTheme.caption,
          ),
          const SizedBox(height: 24),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: _maxWidth),
            child: ListView(
              shrinkWrap: true,
              children: const [
                ListTile(
                  leading: Icon(Icons.language),
                  title: SelectableText('English'),
                ),
                ListTile(
                  leading: Icon(Icons.description_outlined),
                  title: SelectableText('PDF format'),
                ),
              ],
            ),
          )
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

class _BuildDetailsSectionColumn extends HookWidget {
  const _BuildDetailsSectionColumn({required this.book});

  final Book? book;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    if (book != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Categories Row
          Row(
            children: [
              for (final category in book?.categories ?? <String>[])
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Chip(
                    avatar: const Text('📖 '),
                    label: SelectableText(
                      category,
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(height: 16),
          SelectableText(
            book?.name ?? '',
            style: theme.textTheme.headline4?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Html(data: book?.description),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
