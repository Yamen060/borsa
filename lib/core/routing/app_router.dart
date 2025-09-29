import 'package:flutter/material.dart';
import 'package:stock_market/features/home/exchange_home/Exchange.dart';
import 'package:stock_market/features/home/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/Exchange':
        return MaterialPageRoute(builder: (_) => const Exchange());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
