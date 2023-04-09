import 'package:chat_gpt/features/chat/presentation/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import '../../features/splash/presentation/screens/splash_screen.dart';
// import 'package:chat_gpt/injection_container.dart' as di;

class Routes {
  static const String initialRoute = '/';
  static const String chatRoute = '/chat';
}

class AppRoute {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.chatRoute:
        return MaterialPageRoute(
          builder: (context) => const ChatGPTScreen(),
        );

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(
            'undefined Page :{',
          ),
        ),
      ),
    );
  }
}
