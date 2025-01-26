import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart'; // HomeScreen importu
import 'package:flutter_app/screens/download_music_screen.dart'; // DownloadMusicScreen importu
import 'package:flutter_app/screens/loading_screen.dart'; // LoadingScreen importu
import 'package:flutter_app/screens/profile.dart'; // Profil ekranı importu
import 'package:flutter_app/screens/settings.dart'; // SettingsScreen importu

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Yönlendirme işlemi
    switch (settings.name) {
      case '/home':
      // HomeScreen'e yönlendirme
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            song: "Şımarık", // Örnek şarkı verisi
            artist: "Tarkan",
            duration: "3:20",
            imagePath: "assets/album_cover.png", // Örnek görsel yolu
          ),
        );

      case '/downloadMusic':
      // DownloadMusicScreen'e yönlendirme
        return MaterialPageRoute(builder: (_) => const DownloadMusicScreen());

      case '/loading':
      // LoadingScreen'e yönlendirme
        return MaterialPageRoute(builder: (_) => const LoadingScreen());

      case '/profile':
      // Profil sayfasına yönlendirme
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      case '/settings':
      // Ayarlar sayfasına yönlendirme
        return MaterialPageRoute(builder: (_) => const SettingsScreen());

      default:
      // Sayfa bulunamazsa hata sayfası
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
