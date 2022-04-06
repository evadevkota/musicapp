import 'package:hooks_riverpod/hooks_riverpod.dart';

class _LoadingProvider extends StateNotifier<bool> {
  _LoadingProvider() : super(false);

  set loading(bool newVal) => state = newVal;
}

final loadingRef = StateNotifierProvider.autoDispose<_LoadingProvider, bool>(
    (_) => _LoadingProvider());
