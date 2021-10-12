import 'package:app_bases/locator.dart';
import 'package:app_bases/services/navigation_service.dart';
import 'package:app_bases/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';
import 'package:app_bases/router/route_generator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigationKey,
      builder: (_, child) => MainLayoutPage(
        child: child ?? Container(),
      ),
    );
  }
}
