import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/themes.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Kayıt Ol",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "İsim Soyisim",
                prefixIcon: const Icon(CupertinoIcons.person),
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface.withOpacity(0.1),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "E-Posta",
                prefixIcon: const Icon(CupertinoIcons.mail),
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface.withOpacity(0.1),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Şifre",
                prefixIcon: const Icon(CupertinoIcons.lock),
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface.withOpacity(0.1),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Şifre Tekrar",
                prefixIcon: const Icon(CupertinoIcons.lock_shield),
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface.withOpacity(0.1),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: const Text("Kayıt Ol"),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text(
                "Kayıt Olmadan Devam Et",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
