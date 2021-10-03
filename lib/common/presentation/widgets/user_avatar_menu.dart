import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_navigation/riverpod_navigation.dart';

import '../../../authentication/providers.dart';
import '../../domain/models/user_menu_options.dart';
import '../../infrastructure/routes/routes.dart';

/// User Avatar
class UserAvatarMenu extends HookWidget {
  /// [UserAvatarMenu] constructor
  const UserAvatarMenu();

  @override
  Widget build(BuildContext context) {
    final currentUser = useProvider(currentUserStreamProvider).data?.value;
    final navigator = useProvider(navigationProvider.notifier);
    return PopupMenuButton<AccountMenuOptions>(
      child: CircleAvatar(
        radius: 30,
        backgroundImage: currentUser != null
            ? NetworkImage(currentUser.imageUrl ?? '')
            : null,
      ),
      itemBuilder: (final context) => [
        for (final menuOption in AccountMenuOptions.values)
          PopupMenuItem(
            value: menuOption,
            child: Text(menuOption.value()),
          )
      ],
      onSelected: (menuOption) {
        switch (menuOption) {
          case AccountMenuOptions.dashboard:
            navigator.navigate(RoutePath.dashboard);
            break;

          case AccountMenuOptions.signOut:
            // TODO: Handle this case.
            break;
        }
      },
    );
  }
}
