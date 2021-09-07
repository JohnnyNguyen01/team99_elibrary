import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

/// Search Bar Widget
class SearchBar extends HookWidget {
  /// Search Bar constructor
  const SearchBar();

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final controller = useTextEditingController();

    return Form(
      key: formKey,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Find your next book...',
          fillColor: theme.colorScheme.surface,
          suffixIcon: const Icon(Icons.search_outlined),
        ),
      ),
    );
  }
}
