import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'highlight_text.dart';

/// A [SearchResultListTile] used by the SearchBar component
class SearchResultListTile extends HookWidget {
  /// [SearchResultListTile] constructor
  const SearchResultListTile(
      {this.title,
      this.imageUrl,
      this.objectId,
      this.subtitle,
      this.query,
      this.onTap,
      this.trailing});

  /// Search Result Object Id
  final String? objectId;

  /// Search Result Title
  final String? title;

  /// Search Result Subtitle
  final String? subtitle;

  /// Search Result imageUrl
  final String? imageUrl;

  /// Search Result query text
  final String? query;

  /// Trailing widget
  final Widget? trailing;

  /// onPressed callback
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) => ListTile(
        key: key,
        leading: imageUrl != null
            ? Image.network(
                imageUrl ?? '',
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              )
            : null,
        title: HighlightText(
          text: title,
          emphasizedText: query ?? '',
        ),
        subtitle: subtitle != null
            ? HighlightText(
                text: subtitle,
                emphasizedText: query ?? '',
              )
            : null,
        trailing: trailing,
        dense: false,
        onTap: onTap,
      );
}

// Padding(
//         padding: const EdgeInsets.all(4),
//         child: SizedBox(
//           height: 40,
//           child: Row(
//             children: [
//               if (imageUrl != null)
//                 Expanded(
//                   child: Image.network(
//                     imageUrl ?? '',
//                     width: 20,
//                     height: 40,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               Expanded(
//                 flex: 3,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     HighlightText(
//                       text: title,
//                       emphasizedText: query ?? '',
//                     ),
//                     HighlightText(
//                       text: subtitle,
//                       emphasizedText: query ?? '',
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
