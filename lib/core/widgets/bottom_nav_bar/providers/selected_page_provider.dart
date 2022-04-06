import 'package:hooks_riverpod/hooks_riverpod.dart';

class _SelectedPageProvider extends StateNotifier<int> {
  //default index -> 0
  _SelectedPageProvider() : super(0);

  set selectedPage(int newVal) => state = newVal;
}

final selectedPageRef = StateNotifierProvider<_SelectedPageProvider, int>(
    (_) => _SelectedPageProvider());
