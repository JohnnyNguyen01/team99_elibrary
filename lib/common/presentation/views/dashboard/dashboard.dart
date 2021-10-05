import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../../../authentication/providers.dart';
import '../../../utils/hooks.dart';
import '../../widgets/appBars/default_app_bar.dart';
import 'dashboard_view_model.dart';
import 'widgets.dart/empty_list_placeholder.dart';

/// User Dashboard page
class DashBoard extends HookWidget {
  /// [DashBoard] constructor
  const DashBoard();

  @override
  Widget build(BuildContext context) {
    final viewController = useProvider(dashboardViewModelProvider.notifier);
    final viewState = useProvider(dashboardViewModelProvider);
    final screenSize = useScreenSize();
    final theme = useTheme();

    useEffect(
      () {
        Future.microtask(() async {
          await viewController.fetchCurrentBorrowedList();
        });
      },
      [],
    );
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: const DefaultAppBar(),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// User Column
            const _UserDetailsColumn(),

            /// Content
            if (viewState.isLoading)
              Expanded(
                child: SizedBox(
                  height: screenSize.height,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              )

            /// Currently borrowed tab
            else
              viewState.currentlyBorrowedList.isEmpty
                  ? Expanded(
                      child: SizedBox(
                        height: screenSize.height,
                        width: screenSize.width,
                        child: const Center(
                          child: EmptyListPlaceHolder(
                            message: 'No books borrowed yet',
                            width: 250,
                            height: 250,
                          ),
                        ),
                      ),
                    )
                  : const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: _BuildDashboardContent(),
                    )
          ],
        ),
      ),
    );
  }
}

class _UserDetailsColumn extends HookWidget {
  const _UserDetailsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUser = useProvider(currentUserStreamProvider).data?.value;
    final screenSize = useScreenSize();
    final theme = useTheme();
    return Container(
      height: screenSize.height,
      constraints: const BoxConstraints(maxWidth: 240),
      padding: const EdgeInsets.all(8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: currentUser != null
                    ? NetworkImage(
                        currentUser.imageUrl ?? '',
                      )
                    : null,
              ),
              Text(
                '${currentUser?.firstName} ${currentUser?.lastName}',
                style: theme.textTheme.headline5,
              ),
              const SizedBox(height: 4),
              Text(currentUser?.email ?? ''),
              const SizedBox(height: 16),
              ListTile(
                title: const Text('Currently Borrowed'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Borrow History'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Fines'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BuildDashboardContent extends HookWidget {
  const _BuildDashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final viewState = useProvider(dashboardViewModelProvider);

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Currently Borrowed',
              style: theme.textTheme.headline5?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            DataTable(
              dividerThickness: 2,
              columns: [
                for (final headerName in viewState.currentlyBorrowedHeaders)
                  DataColumn(
                    label: SelectableText(
                      headerName,
                      style: theme.textTheme.bodyText2
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    tooltip: headerName,
                  ),
              ],
              rows: [
                for (final instance in viewState.currentlyBorrowedList)
                  DataRow(cells: [
                    DataCell(Image.network(
                      instance.book?.imageUrl ?? '',
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    )),
                    DataCell(
                      SelectableText(instance.book?.name ?? ''),
                    ),
                    const DataCell(
                      SelectableText('05/10/2021'),
                    ),
                    const DataCell(
                      SelectableText('29/10/21'),
                    ),
                    DataCell(
                      SelectableText(instance.currentlyBorrowedBook?.uid ?? ''),
                    )
                  ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
