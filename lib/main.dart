import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/core/services/authentication_service.dart';
import 'package:provider_demo/locator.dart';
import 'package:provider_demo/ui/router.dart' as myRouter;

import 'package:provider_demo/core/models/user.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>(
      initialData: User.initial(),
      create: (context) =>
          locator<AuthenticationService>().userController.stream,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        initialRoute: 'login',
        onGenerateRoute: myRouter.Router.generateRoute,
      ),
    );
  }
}
