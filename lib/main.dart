import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gofit_10662/Bloc/app_bloc.dart';
import 'package:gofit_10662/Pages/MemberPages/home_member.dart';
import 'package:gofit_10662/Pages/loginPages/login_page.dart';
import 'global.dart';
// import 'package:gofit_10662/loginPages/login_page.dart';
// import 'package:gofit_10662/navigationBar/navigasi_home.dart';
// import 'dart:developer';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalGofit globalGofit = GlobalGofit();

    return BlocProvider(
      create: (context) => AppBloc(),
      child : MaterialApp(
          debugShowCheckedModeBanner: false,
          // home: HomePage()
          home: LoginPage(),
          // home: HomePageMember(),
          routes: globalGofit.routesGofit,
          
        )
        );
      }
  }

