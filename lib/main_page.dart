import 'package:flutter/material.dart';
import 'package:main/home_page.dart';
import 'package:main/isi_saldo.dart';
import 'package:main/profile.dart';
import 'package:main/riwayat.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Riwayat(),
    IsiSaldo(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // ini apa yang sedang dipilih
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.greenAccent[700]),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "Riwayat",
              backgroundColor: Colors.greenAccent[700]),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_outlined),
              label: "Isi Saldo",
              backgroundColor: Colors.greenAccent[700]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.greenAccent[700]),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
