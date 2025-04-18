import 'package:flutter/material.dart';
import 'package:myapp/profil_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 160, 175, 182),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Dashboard'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilScreen(nama: "Afifah"),
            ),
          );
        },
        child: const Text('Profil'),
      ),
    );
  }
}
