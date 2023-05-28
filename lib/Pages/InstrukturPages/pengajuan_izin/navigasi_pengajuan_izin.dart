import 'package:gofit_10662/Pages/InstrukturPages/pengajuan_izin/history_izin_screen.dart';
import 'package:gofit_10662/Pages/InstrukturPages/pengajuan_izin/pengajuan_izin_screen.dart';
import 'package:gofit_10662/style/color_style.dart';
import 'package:flutter/material.dart';

class NavigasiPengajuanIzinScreen extends StatefulWidget {
  static const routename = "/PengajuanIzinScreen";
  const NavigasiPengajuanIzinScreen({super.key});

  @override
  State<NavigasiPengajuanIzinScreen> createState() =>
      _NavigasiPengajuanIzinScreen();
}

class _NavigasiPengajuanIzinScreen extends State<NavigasiPengajuanIzinScreen> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const PengajuanIzinScreen(),
    const HistoryIzinScreen(),
    // const HistoryIzinScreen()
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
              icon: Icon(Icons.person_add),
              label: 'history',
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
