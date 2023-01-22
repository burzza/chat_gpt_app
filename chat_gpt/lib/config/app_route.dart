import 'package:chat_gpt/ui/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return SplashScreen.route();
      case HomePage.routeName:
        return HomePage.route();

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Not Found'),
            ),
          ),
        );
    }
  }
}
