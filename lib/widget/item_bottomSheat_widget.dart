// ignore_for_file: file_names
import 'package:gofit_10662/style/color_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BottomSheetWidget extends StatelessWidget {
  String nama;
  BottomSheetWidget({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    final mediaQureyHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      height: mediaQureyHeight * 0.5,
      padding: const EdgeInsets.all(20),
      color: primer1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Detail Member: ",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "nama : $nama",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: primer3,
            ),
          ),
          Text(
            "Tanggal Lahir : 20 januari 2001",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: primer3,
            ),
          ),
          Text(
            "Nomer Telp : 08123456712",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: primer3,
            ),
          ),
          Text(
            "Tanggal Kadaluarsa : 30 mei 2023",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: primer3,
            ),
          ),
          Text(
            "Tanggal Gabung : 1 mei 2023",
            style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: primer3,
            ),
          ),
        ],
      ),
    );
  }
}
