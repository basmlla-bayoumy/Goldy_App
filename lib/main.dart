import 'package:flutter/material.dart';
import 'package:goldy_app/core/routing/app_router.dart';
import 'package:goldy_app/core/routing/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
  initialRoute: Routers.homePage,
  onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
