import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart'; 
import 'package:flutter_app/screens/download_music_screen.dart'; 
import 'package:flutter_app/screens/loading_screen.dart'; 
import 'package:flutter_app/screens/profile.dart'; 
import 'package:flutter_app/screens/settings.dart'; 

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    
    switch (settings.name) {
      case '/home':
     
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            song: "Şımarık",
            artist: "Tarkan",
            duration: "3:20",
            imagePath: "assets/album_cover.png",
          ),
        );

      case '/downloadMusic':
      
        return MaterialPageRoute(builder: (_) => const DownloadMusicScreen());

      case '/loading':
      
        return MaterialPageRoute(builder: (_) => const LoadingScreen());

      case '/profile':
      
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      case '/settings':
     
        return MaterialPageRoute(builder: (_) => const SettingsScreen());

      default:
     
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text("Error"),
            ),
            body: const Center(
              child: Text("Page not found"),
            ),
          ),
        );
    }
  }
}
