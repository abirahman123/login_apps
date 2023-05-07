import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

// Membuat tampilan untuk foto profil
  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/naruto.jpg'),
        ),
      ),
    );

// Membuat tampilan dalam bentuk text
    final sambutan = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat Datang Sahabat',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final text = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Hallo. '
        'Terima kasih atas kunjungan anda. '
        'Selamat Beraktivitas!',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

// mengatur/mendesain tampilan pada homepage
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[profil, sambutan, text],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
