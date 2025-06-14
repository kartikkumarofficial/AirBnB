

import 'package:flutter/material.dart';
import 'package:wanderin/presentation/MainScaffold.dart';
import 'package:wanderin/presentation/screens/ExploreScreen.dart';
import 'package:wanderin/presentation/screens/ServiceScreen.dart';
import 'package:wanderin/presentation/screens/auth/LoginScreen.dart';



class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/second':
        return MaterialPageRoute(builder: (_) => MainScaffold());
      case '/third':
        return MaterialPageRoute(builder: (_) => ServiceScreen());
      case '/fourth':
        return MaterialPageRoute(builder: (_) => MainScaffold());
      default:
        return MaterialPageRoute(builder: (_) =>
            Scaffold(body: Center(
                child: Text('No route defined for ${routeSettings.name}'))));
    }


  }
  void dispose(){}

}