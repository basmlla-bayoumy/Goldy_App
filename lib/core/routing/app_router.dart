import 'package:flutter/material.dart';
import 'package:goldy_app/core/presentation/home_screen.dart';
import 'package:goldy_app/core/routing/routers.dart';
import 'package:goldy_app/feature/gold/presentation/Screens/gold_screen.dart';
import 'package:goldy_app/feature/silver/presentation/screens/silver_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case Routers.homescreen:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );

        case Routers.goldscreen:
        return MaterialPageRoute(
          builder: (context) {
            return GoldScreen();
          },
        );
        case Routers.silverscreen:
        return MaterialPageRoute(
          builder: (context) {
            return SilverScreen();
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
