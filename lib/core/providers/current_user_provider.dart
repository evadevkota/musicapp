import 'package:fyp/core/models/user/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class _CurrentUserProvider extends StateNotifier<User?> {
  _CurrentUserProvider() : super(null);

  set currentUser(User user) => state = user;
  void removeCurrentUser() => state = null;
}

final currentUserRef = Provider<_CurrentUserProvider>((_) => _CurrentUserProvider());
