import 'dart:async';

import 'package:provider_demo/core/models/user.dart';
import 'package:provider_demo/locator.dart';
import 'package:provider_demo/core/services/api.dart';

class AuthenticationService {
  // Inject our API
  Api _api = locator<Api>();
  StreamController<User> userController = StreamController<User>();

  Future<bool> login(int userId) async {
    // Get the user profile for the Id
    var fetchedUser = await _api.getUserProfile(userId);

    // Check if success
    var hasUser = fetchedUser != null;
    if (hasUser) {
      userController.add(fetchedUser);
    }
    return hasUser;
  }
}
