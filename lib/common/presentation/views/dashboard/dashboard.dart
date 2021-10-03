import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../../../authentication/providers.dart';
import '../../../utils/hooks.dart';
import '../../widgets/appBars/default_app_bar.dart';

/// User Dashboard page
class DashBoard extends HookWidget {
  /// [DashBoard] constructor
  const DashBoard();

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final currentUser = useProvider(currentUserStreamProvider).data?.value;
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: SingleChildScrollView(
        child: Row(
          children: const [_UserDetailsColumn()],
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
      padding: const EdgeInsets.all(8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
            ],
          ),
        ),
      ),
    );
  }
}
