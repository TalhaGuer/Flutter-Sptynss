import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/themes.dart';
import 'screens/home_screen.dart';
import 'screens/download_music_screen.dart';
import 'screens/loading_screen.dart';
import 'routes/app_router.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
      initialRoute: '/loading',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
