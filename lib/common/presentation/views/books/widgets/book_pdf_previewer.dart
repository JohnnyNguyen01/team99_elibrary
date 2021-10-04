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
    final currentPageNumber = useState(0);
    final numberOfPages = useState(0);
    final pdfController = useMemoized(() => PdfViewerController());

    return Dialog(
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: screenSize.width - 80, maxHeight: 800),
        child: SizedBox(
          width: 500,
          height: 800,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SfPdfViewer.network(
                bookPdfUrl,
                controller: pdfController,
                pageLayoutMode: PdfPageLayoutMode.single,
                onDocumentLoaded: (final details) {
                  numberOfPages.value = details.document.pages.count;
                },
              ),

              /// user controls
              Card(
                elevation: 2,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        pdfController.previousPage();
                        currentPageNumber.value = pdfController.pageNumber;
                      },
                      icon: const Icon(Icons.arrow_back_outlined),
                    ),
                    Text(
                        '${pdfController.pageNumber} / ${numberOfPages.value}'),
                    IconButton(
                      onPressed: () {
                        pdfController.nextPage();
                        currentPageNumber.value = pdfController.pageNumber;
                      },
                      icon: const Icon(Icons.arrow_forward_outlined),
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
