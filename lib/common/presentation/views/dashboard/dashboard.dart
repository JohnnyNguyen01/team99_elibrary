import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../../../authentication/providers.dart';
import '../../../utils/hooks.dart';
import '../../widgets/appBars/default_app_bar.dart';
import 'dashboard_view_model.dart';

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
            const _UserDetailsColumn(),
            if (viewState.isLoading)
              Expanded(
                child: SizedBox(
                  height: screenSize.height,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              )
            else
              const Padding(
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
                onTap: (){},
              ),
               ListTile(
                title: const Text('Borrow History'),
                onTap: (){},
              ),
               ListTile(
                title: const Text('Fines'),
                onTap: (){},
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
                const DataColumn(
                  label: SelectableText(
                    ' ',
                  ),
                  tooltip: 'Book Name',
                ),
                DataColumn(
                  label: SelectableText(
                    'Book name',
                    style: theme.textTheme.bodyText1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  tooltip: 'Book Name',
                ),
                DataColumn(
                    label: SelectableText(
                      'Date Borrowed',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    tooltip: 'Date Borrowed'),
                DataColumn(
                  label: SelectableText(
                    'Date Due',
                    style: theme.textTheme.bodyText1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  tooltip: 'Date Due',
                ),
                DataColumn(
                    label: SelectableText(
                      'Transaction Id',
                      style: theme.textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    tooltip: 'Transaction Id'),
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
