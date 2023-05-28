import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gofit_10662/Bloc/app_bloc.dart';
import 'package:gofit_10662/Pages/InstrukturPages/home/reset_password.dart';
import 'package:gofit_10662/Pages/InstrukturPages/home/home_page_instruktur.dart';
import 'package:gofit_10662/style/color_style.dart';
// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ProfilPersonalTrainerScreen extends StatelessWidget {
  ProfilPersonalTrainerScreen({super.key});
  // ignore: unnecessary_new
  // var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;
    final bodyheight = mediaQueryHeight - paddingTop;

    return Scaffold(
      backgroundColor: primer3,
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: primer0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primer0,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePersonalTrainerScreen();
                      },
                    ),
                  );
                },
                child: const Text("Keluar")),
          ),
        ],
      ),
      body: BlocBuilder<AppBloc, AppState>(
        builder: (context,state){
        return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://picsum.photos/300/400"),
              ),
              title: Text(
                'Nama : ${state.loginUser!.instruktur!.namaInstruktur}',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  color: primer0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                'Username : ${state.loginUser!.instruktur!.usernameInstruktur}',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: primer0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: bodyheight * 0.02,
            ),
            Container(
              padding: const EdgeInsets.all(25),
              width: mediaQueryWidth,
              height: bodyheight * 0.21,
              decoration: BoxDecoration(
                // color: primer1,
                border: Border.all(color: primer0),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jumlah Keterlambatan : ${state.loginUser!.instruktur!.jumlahKeterlambatan}',
                    style: GoogleFonts.varelaRound(
                      color: primer0,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: bodyheight * 0.01,
                  ),
                  Text(
                    'No Telp : ${state.loginUser!.instruktur!.noTelp}',
                    style: GoogleFonts.varelaRound(
                      color: primer0,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: bodyheight * 0.01,
                  ),
                  Text(
                    'Email : ${state.loginUser!.instruktur!.emailInstruktur}',
                    style: GoogleFonts.varelaRound(
                      color: primer0,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: bodyheight * 0.01,
                  ),
                  Text(
                    'Alamat : ${state.loginUser!.instruktur!.alamatInstruktur}',
                    style: GoogleFonts.varelaRound(
                      color: primer0,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: bodyheight * 0.05,
            ),
            Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primer0,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ResetPasswordScreen();
                        },
                      ),
                    );
                  },
                  child: const Text("Reset Password")),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
