import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_extension/riverpod_extension.dart';
import '../../../../domain/models/book/book.dart';

/// Borrow Confirmation Dialog
class BorrowConfirmationDialog extends HookWidget {
  /// [BorrowConfirmationDialog] constructor
  const BorrowConfirmationDialog({
    required Book book,
    required this.onConfirmTap,
  }) : _book = book;

  final Book _book;

  /// Confirm button callback
  final VoidCallback onConfirmTap;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return AlertDialog(
      title: Text('Are you sure you want to borrow ${_book.name}?'),
      content: Text(
        'Doing this will add the book to your account.',
        style: theme.textTheme.subtitle2,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: onConfirmTap,
              child: const Text('Confirm'),
            )
          ],
        )
      ],
    );
  }
}
