import 'package:flutter/material.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/download_music_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/loading':
        return MaterialPageRoute(builder: (_) => const LoadingScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/download':
        return MaterialPageRoute(builder: (_) => const DownloadMusicScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
