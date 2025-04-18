import 'package:flutter/material.dart';

class ContohListView extends StatelessWidget {
  const ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Daftar Nama Teman Kelas'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Abdillah'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Adit'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Afifah'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Ahmad'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Aldyan'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Alyesa'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Andika'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('April'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Arya'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Asmara'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Azzahra'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Bagas'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Candra'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Deva'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Dimas'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Dzaky'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Elisa'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Faisal'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Fawwaz'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Galuh'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Grestiana'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Ikhsan'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Kevin'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Miftakhu'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('M Naufal'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('M Zamharir'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Nabila'),
          ),
        ],
      ),
    );
  }
}
