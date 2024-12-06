import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Daha üst kısma taşıyoruz
          crossAxisAlignment: CrossAxisAlignment.center, // Ortada hizalama
          children: [
            const SizedBox(height: 50), // Yukarıdan boşluk bırakıyoruz
            // Profil Fotoğrafı
            ClipRRect(
              borderRadius: BorderRadius.circular(100), // Yuvarlak yapıyoruz
              child: Image.asset(
                'assets/images/profil.png', // Profil fotoğrafı dosyasının yolu
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            // Kullanıcı Adı
            const Text(
              "Talha Güleryüz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Kullanıcı Bilgileri
            const Text(
              "Telefon: +90 551 043 07 86", // Yeni telefon numarası
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "E-posta: talga@gmail.com",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            // Bu kısımda butonlar kaldırıldı
          ],
        ),
      ),
      backgroundColor: Colors.grey[900], // Arka plan rengini açıyoruz
    );
  }
}
