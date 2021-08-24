import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'validators.dart';

/// Obtain the app's screen [Size] from the building [HookWidget]
Size useScreenSize({BuildContext? context}) =>
    MediaQuery.of(context ?? useContext()).size;

/// Obtain String Validators via hooks
StringValidators useValidators() => StringValidators.instance;

/// Present the [SnackBar] with [message]
void useSnackBar({
  required BuildContext context,
  required String message,
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      content: Text(message),
      width: 448,
    ),
  );
}
