import 'package:gofit_10662/style/color_style.dart';
import 'package:flutter/material.dart';

class HistoryIzinScreen extends StatelessWidget {
  const HistoryIzinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primer3,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "History Izin",
          style: TextStyle(color: primer0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
