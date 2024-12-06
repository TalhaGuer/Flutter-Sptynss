import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DownloadMusicScreen extends StatelessWidget {
  const DownloadMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İndirilen Müzikler"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: 10,
          itemBuilder: (context, index) {
            final musicList = [
              "Rakkas - Sezen Aksu",
              "Şımarık - Tarkan",
              "Deli - Mor ve Ötesi",
              "Gülümse - Sezen Aksu",
              "Bu Akşam - Duman",
              "Sarı Çizmeli  - Barış Manço  ",
              "Yalnızca Sen - Aşkın Nur Yengi",
              "Ben Böyleyim - Athena",
              "Olmazsan Olmaz - Emre Aydın",
              "Sevdanın Son Vuruşu - Tarkan",
            ];

            return Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(CupertinoIcons.music_note, color: Colors.green, size: 40),
                  const SizedBox(width: 16),
                  Text(
                    musicList[index],
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
