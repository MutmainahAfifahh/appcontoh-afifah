import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.nama});

  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 201, 209),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 132, 134),
        title: Text("Profil $nama"),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, size: 40),
          Icon(Icons.search, size: 40),
          Icon(Icons.person, size: 40),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(" $nama", style: TextStyle(fontSize: 30)),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://awsimages.detik.net.id/community/media/visual/2020/08/10/kucing-berdiri-dua-kaki-7.jpeg?w=600&q=90',
                  ), // Ganti dengan path gambar profil
                ),
                Positioned(
                  bottom: 73, // Geser ikon edit ke bawah
                  right: 3,
                  child: Icon(Icons.edit, size: 30, color: Colors.blueGrey),
                ),
              ],
            ),
            SizedBox(height: 10), // Tambah jarak antara avatar dan teks
            Text("Nama: Afifah"),
            Text("Alamat: Klaten"),
          ],
        ),
      ),
    );
  }
}
