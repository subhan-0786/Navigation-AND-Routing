import 'package:flutter/material.dart';
import 'package:nav_and_routing/utils/routes.dart';
import 'package:nav_and_routing/utils/routes_name.dart';

void main() {
  runApp(const Subhan());
}

class Subhan extends StatelessWidget {
  const Subhan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: RouteName.HomeScreen,
        onGenerateRoute: Routes.generateRoute);
  }
}
