import 'package:flutter/material.dart';
import 'package:goldy_app/core/presentation/home_page.dart';
import 'package:goldy_app/core/routing/routers.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case Routers.homePage:
        return MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
