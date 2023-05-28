import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gofit_10662/Bloc/app_bloc.dart';
import 'package:gofit_10662/Pages/MemberPages/booking_gym_member.dart';
import 'package:gofit_10662/Pages/MemberPages/index_member.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gofit_10662/Pages/MemberPages/profile_member.dart';



class HomePageMember extends StatefulWidget {
  @override
  _HomePageMemberState createState() => _HomePageMemberState();
}

class _HomePageMemberState extends State<HomePageMember> {
  int _selectedNavbar = 0;
  static  List<Widget> _widgetOptions = <Widget>[
    IndexMember(),
    Text(
      'Booking kelas',
    ),
    BookingGymPage(),
    ProfileMemberScreen()

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // var appBloc = context.read<AppBloc>();
    // inspect(appBloc.state.loginUser);
    // var testData = appBloc.state.loginUser!.member;
    // inspect(testData);
  }
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GOFIT"),
      ),
       body: Center(
        child: _widgetOptions.elementAt(_selectedNavbar),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda'
            // title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Booking Kelas',
            // title: Text('Pesanan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Booking Gym',
            // title: Text('Inbox'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            // title: Text('Akun'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}