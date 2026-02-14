import 'package:flutter/material.dart';
import 'package:goldy_app/core/networking/dio_helper.dart';
import 'package:goldy_app/core/routing/app_router.dart';
import 'package:goldy_app/core/routing/routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: Routers.homescreen,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
