import 'package:workflow_management_system/models/User.dart';

class UserManager {
  final List<User> _users = [];

  bool registerUser(String email, String password) {
    if (_users.any((user) => user.email == email)) {
      return false; // already registered
    }

    // REgister user if no user found
    _users.add(User(email, password));
    return true;
  }

  bool loginUser(String email, String password) {
    return _users
        .any((user) => user.email == email && user.password == password);
  }
}
