import 'package:flutter/material.dart';
import 'package:nav_and_routing/home_screen.dart';
import 'package:nav_and_routing/screen_three.dart';
import 'package:nav_and_routing/screen_two.dart';
import 'package:nav_and_routing/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.HomeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.ScreenTwo:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map,
                ));
      case RouteName.ScreenThree:
        return MaterialPageRoute(builder: (context) => const ScreenThree());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("No Route Provided!!"),
            ),
          );
        });
    }
  }
}
