import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../../../../utils/hooks.dart';

/// Book PDF Previewer
///
/// Displays the pdf viewer for the specified book
class BookPdfPreviewer extends HookWidget {
  /// [BookPdfPreviewer] constructor
  const BookPdfPreviewer({required final this.bookPdfUrl});

  /// The url to the book's pdf file
  final String bookPdfUrl;

  @override
  Widget build(BuildContext context) {
    final screenSize = useScreenSize();
    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: SfPdfViewer.network(bookPdfUrl),
      ),
    );
  }
}
