// import 'package:app_gym/screen/personal_trainer/home/home_personal_trainer_screen.dart';
// import 'package:app_gym/screen/personal_trainer/home/profile_personal_screen.dart';
// import 'package:app_gym/screen/personal_trainer/presensi_member_pt/presensi_personal_training.dart';
import 'package:gofit_10662/Pages/InstrukturPages/home/profile_instruktur.dart';
import 'package:gofit_10662/Pages/InstrukturPages/home/home_page_instruktur.dart';
import 'package:gofit_10662/Pages/InstrukturPages/presensi/presensi_instruktur.dart';
import 'package:gofit_10662/style/color_style.dart';
import 'package:flutter/material.dart';

class InstrukturNavigasi extends StatefulWidget {
  // static const routename = "/HomeMainScreen";
  const InstrukturNavigasi({super.key});

  @override
  State<InstrukturNavigasi> createState() => _InstrukturNavigasi();
}

class _InstrukturNavigasi extends State<InstrukturNavigasi> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    HomePersonalTrainerScreen(),
    PresensiPersonalTrainerScreen(),
    ProfilPersonalTrainerScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 8,
          ),
        ]),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: primer1,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
