import 'package:flutter/material.dart';
import 'download_music_screen.dart';
import 'profile.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> songs = const [
    {
      "song": "Rakkas",
      "artist": "Sezen Aksu",
      "duration": "03:25",
      "imagePath": "assets/images/2.png"
    },
    {
      "song": "Şımarık",
      "artist": "Tarkan",
      "duration": "04:05",
      "imagePath": "assets/images/1.png"
    },
    {
      "song": "Deli",
      "artist": "Mor ve Ötesi",
      "duration": "04:20",
      "imagePath": "assets/images/3.png"
    },
    {
      "song": "Aradan Çook Yıllar Geçti",
      "artist": "Tuğçe Kandemir",
      "duration": "03:15",
      "imagePath": "assets/images/4.png"
    },
    {
      "song": "Gülümse",
      "artist": "Sezen Aksu",
      "duration": "03:15",
      "imagePath": "assets/images/5.png"
    },
    {
      "song": "Naçar",
      "artist": "Emre Fel",
      "duration": "03:13",
      "imagePath": "assets/images/6.png"
    },
    {
      "song": "Geçiyor Zaman",
      "artist": "Semicenk",
      "duration": "02:15",
      "imagePath": "assets/images/7.png"
    },
    {
      "song": "Yokluğunda",
      "artist": "Leyla The Band",
      "duration": "02:15",
      "imagePath": "assets/images/8.png"
    },
    {
      "song": "Kolay Değildir",
      "artist": "Duman",
      "duration": "02:15",
      "imagePath": "assets/images/9.png"
    },
    {
      "song": "Dumanlı Kentin Hatırası",
      "artist": "Kayra",
      "duration": "02:15",
      "imagePath": "assets/images/10.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SptyMusic"),
        centerTitle: false,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
             
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text(
                "Menü",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.download),
              title: const Text("İndirilenler"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DownloadMusicScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text("Kategoriler"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryScreen(),
                  ),
                );
              },
            ),
           
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text("Profil"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(), 
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      songs[index]['imagePath']!,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    songs[index]['song']!,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    songs[index]['artist']!,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  trailing: Text(
                    songs[index]['duration']!,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MusicDetailScreen(
                          songName: songs[index]['song']!,
                          artistName: songs[index]['artist']!,
                          imagePath: songs[index]['imagePath']!,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            color: Colors.grey[900],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                const Icon(
                  Icons.album,
                  color: Colors.white,
                  size: 48,
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kufi",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "Duman",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.skip_next,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

class MusicDetailScreen extends StatelessWidget {
  final String songName;
  final String artistName;
  final String imagePath;

  const MusicDetailScreen({
    super.key,
    required this.songName,
    required this.artistName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(songName),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imagePath,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              songName,
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              artistName,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.skip_previous, color: Colors.grey),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow, color: Colors.green),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            ),
            Slider(
              value: 0.5,
              onChanged: (value) {},
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text("İndir"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategoriler"),
        backgroundColor: Colors.black,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CategoryTile(
            title: "Pop",
            icon: Icons.music_note,
            color: Colors.blue,
            onTap: () {},
          ),
          CategoryTile(
            title: "Rock",
            icon: Icons.headphones,
            color: Colors.red,
            onTap: () {},
          ),
          CategoryTile(
            title: "Jazz",
            icon: Icons.library_music,
            color: Colors.green,
            onTap: () {},
          ),
          CategoryTile(
            title: "Classical",
            icon: Icons.queue_music,
            color: Colors.orange,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const CategoryTile({super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50, color: Colors.white),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
