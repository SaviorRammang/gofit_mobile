// ignore_for_file: unused_import

import 'package:gofit_10662/Pages/InstrukturPages/home/profile_instruktur.dart';
import 'package:gofit_10662/Pages/InstrukturPages/navigasi_instruktur.dart';
import 'package:gofit_10662/style/color_style.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;
    final myAppBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const InstrukturNavigasi()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: primer0,
          )),
    );
    final bodyheight =
        mediaQueryHeight - myAppBar.preferredSize.height - paddingTop;

    return Scaffold(
      backgroundColor: primer3,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: bodyheight,
          height: bodyheight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ubah Password",
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  color: primer0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Buat password barumu untuk login akunmu",
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: primer0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: primer3,
                  border: Border.all(color: Colors.black38),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: TextFormField(
                  // any number you need (It works as the rows for the textarea)
                  decoration: const InputDecoration(
                    hintText: " New Password ?",
                    contentPadding: EdgeInsets.only(
                      left: 15,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: primer3,
                  border: Border.all(color: Colors.black38),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: TextFormField(
                  // any number you need (It works as the rows for the textarea)
                  decoration: const InputDecoration(
                    hintText: " Confirm Password",
                    contentPadding: EdgeInsets.only(
                      left: 15,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primer0,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Ubah Password",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      color: primer1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
