import 'package:flutter/material.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:one_context/one_context.dart';

// Toast without relying on platform channels
// Uses an overlay-based snackbar for reliability
class ToastComponent {
  static void showDialog(String msg, {dynamic duration, dynamic gravity}) {
    final context = OneContext().context;
    if (context == null) return;
    final messenger = ScaffoldMessenger.maybeOf(context);
    if (messenger == null) return;
    messenger.removeCurrentSnackBar();
    messenger.showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: TextStyle(color: MyTheme.dark_grey),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
