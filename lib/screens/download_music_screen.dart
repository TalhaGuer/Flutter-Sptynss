import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../core/themes.dart';

class DownloadMusicScreen extends StatelessWidget {
  const DownloadMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    final musicList = [
      "Rakkas - Sezen Aksu",
      "Şımarık - Tarkan",
      "Deli - Mor ve Ötesi",
      "Gülümse - Sezen Aksu",
      "Bu Akşam - Duman",
      "Sarı Çizmeli Mehmet Ağa - Barış Manço",
      "Yalnızca Sen - Aşkın Nur Yengi",
      "Ben Böyleyim - Athena",
      "Olmazsan Olmaz - Emre Aydın",
      "Sevdanın Son Vuruşu - Tarkan",
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("İndirilen Müzikler"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.isDark ? CupertinoIcons.moon : CupertinoIcons.sun_max,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: musicList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.only(bottom: 16.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.music_note,
                  color: Theme.of(context).colorScheme.primary,
                  size: 40,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    musicList[index],
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
