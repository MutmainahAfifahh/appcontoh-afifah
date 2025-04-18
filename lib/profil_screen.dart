import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key, required this.nama});

  final String nama;

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  Color backgroundColor = Colors.white;

  List<Color> backgroundColors = [
    Colors.white,
    Colors.blue[100]!,
    Colors.green[100]!,
    Colors.pink[100]!,
    Colors.yellow[100]!,
  ];

  int currentColorIndex = 0;

  void gantiBackground() {
    setState(() {
      currentColorIndex = (currentColorIndex + 1) % backgroundColors.length;
      backgroundColor = backgroundColors[currentColorIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 60, 132, 134),
        elevation: 0,
        title: const Text("Profil"),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.home, size: 40),
          Icon(Icons.search, size: 40),
          Icon(Icons.person, size: 40),
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text("Afifah", style: TextStyle(fontSize: 23)),
              ),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://awsimages.detik.net.id/community/media/visual/2020/08/10/kucing-berdiri-dua-kaki-7.jpeg?w=600&q=90',
                      ),
                    ),
                    Positioned(
                      bottom: 73,
                      right: 3,
                      child: Icon(Icons.edit, size: 30, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "Email: ${widget.nama}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const Center(
                child: Text(
                  "Alamat: Klaten",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),

          Positioned(
            bottom: 30,
            right: 20,
            child: IconButton(
              onPressed: gantiBackground,
              icon: const Icon(Icons.color_lens, color: Colors.black),
              tooltip: "Ganti background",
            ),
          ),
        ],
      ),
    );
  }
}
