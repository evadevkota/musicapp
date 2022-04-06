import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:locally/locally.dart';
import 'package:flutter/material.dart' show MaterialPageRoute;

extension ContextX on BuildContext {
  Result read<Result>(
    ProviderBase<Result> provider,
  ) {
    return ProviderScope.containerOf(this).read(provider);
  }

  void showNotification(
      {required String title,
      required String message,
      required String payload,
      required Widget Function() navigateToPage}) {
    final locally = Locally(
      context: this,
      payload: payload,
      pageRoute: MaterialPageRoute(builder: (context) => navigateToPage()),
      appIcon: 'mipmap/ic_launcher',
    );
    locally.show(title: title, message: message);
  }
}
