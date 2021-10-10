import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_navigation/riverpod_navigation.dart';
import '../../applicaiton/states/current_user.dart';

import '../../domain/models/user_menu_options.dart';
import '../../infrastructure/routes/providers.dart';
import '../../infrastructure/routes/routes.dart';

/// User Avatar
class UserAvatarMenu extends HookWidget {
  /// [UserAvatarMenu] constructor
  const UserAvatarMenu();

  @override
  Widget build(BuildContext context) {
    final currentUser = useProvider(currentUserStateProvider);
    final userRepo = useProvider(userRepositoryProvider);
    final navigator = useProvider(navigationProvider.notifier);

    return PopupMenuButton<AccountMenuOptions>(
      child: CircleAvatar(
          radius: 30, backgroundImage: NetworkImage(currentUser.imageUrl)),
      itemBuilder: (final context) => [
        if (currentUser.isAdmin)
          for (final menuOption in AccountMenuOptions.values)
            PopupMenuItem(
              value: menuOption,
              child: Text(menuOption.value()),
            )
        else ...[
          PopupMenuItem(
            value: AccountMenuOptions.dashboard,
            child: Text(AccountMenuOptions.dashboard.value()),
          ),
          PopupMenuItem(
            value: AccountMenuOptions.signOut,
            child: Text(AccountMenuOptions.signOut.value()),
          ),
        ]
      ],
      onSelected: (menuOption) async {
        switch (menuOption) {
          case AccountMenuOptions.dashboard:
            navigator.navigate(RoutePath.dashboard);
            break;
          case AccountMenuOptions.signOut:
            await userRepo.signOutCurrentUser();
            break;
          case AccountMenuOptions.admin:
            navigator.navigate(RoutePath.admin);
            break;
        }
      },
    );
  }
}
