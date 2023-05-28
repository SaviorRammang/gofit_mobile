// import 'package:app_gym/screen/personal_trainer/pengajuan_izin/navigasi_pengajuan_izin.dart';
import 'package:gofit_10662/Pages/InstrukturPages/pengajuan_izin/navigasi_pengajuan_izin.dart';
import 'package:gofit_10662/Pages/InstrukturPages/presensi/detail_presensi_instruktur.dart';
import 'package:gofit_10662/Pages/loginPages/login_page.dart';
import 'package:gofit_10662/style/color_style.dart';
// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePersonalTrainerScreen extends StatelessWidget {
  HomePersonalTrainerScreen({super.key});
  // ignore: unnecessary_new
  // var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    final mediaQureyHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final myappBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    final bodyHeight = mediaQureyHeight -
        myappBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: primer0,
      appBar: myappBar,
      body: SizedBox(
        width: mediaQueryWidth,
        height: bodyHeight,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30),
              width: mediaQueryWidth,
              height: bodyHeight * 0.2,
              color: primer0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selamat Datang",
                    style: GoogleFonts.nunito(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: mediaQueryWidth * 0.4,
                    height: bodyHeight * 0.05,
                    decoration: BoxDecoration(
                      color: primer3,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Instruktur",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const CircleAvatar(
                          radius: 17,
                          child: Icon(Icons.people),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: bodyHeight * 0.15,
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                height: bodyHeight * 0.9,
                width: mediaQueryWidth,
                decoration: BoxDecoration(
                  color: primer3,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                              const NavigasiPengajuanIzinScreen()));
                        },
                        child: 
                        Container(
                          padding: const EdgeInsets.only(top: 5, left: 20),
                          height: bodyHeight * 0.15,
                          width: mediaQueryWidth,
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: primer1,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pengajuan Izin",
                                    style: GoogleFonts.nunito(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Jauh Lebih Mudah dan Cepat",
                                    style: GoogleFonts.nunito(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  //
                                ],
                              ),
                              Positioned(
                                  left: mediaQueryWidth * 0.6,
                                  child: Image.asset(
                                    "assets/images/umplop.png",
                                    width: mediaQueryWidth * 0.3,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
                      ),
                      
                      GestureDetector(
                        onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                   LoginPage()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: mediaQueryWidth,
                          height: mediaQureyHeight * 0.12,
                          decoration: BoxDecoration(
                              color: primer1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'On Process',
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: bodyHeight * 0.02,
                              ),
                              Text(
                                "List Kelas Yang Berjalan Hari ini",
                                style: GoogleFonts.nunito(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                 
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
