import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gofit_10662/Bloc/app_bloc.dart';
import 'package:gofit_10662/Pages/loginPages/login_page.dart';


// class ProfileMemberPage extends StatelessWidget {
//   const ProfileMemberPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: ,
//       body: ,
//     )
//   }
// }
import 'package:gofit_10662/style/color_style.dart';
// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMemberScreen extends StatelessWidget {
  ProfileMemberScreen({super.key});
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
      // appBar: AppBar(
      //   title: Text(
      //     "Profile",
      //     style: TextStyle(color: primer0),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions: [
      //     Center(
      //       child: ElevatedButton(
      //         style: ButtonStyle(
      //           backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(233, 44, 33, 455)),
      //         ),
      //           onPressed: () {
      //             Navigator.of(context).pushReplacement(
      //               MaterialPageRoute(
      //                 builder: (context) {
      //                   return LoginPage();
      //                 },
      //               ),
      //             );
      //           },
      //           child: const Text("Keluar")),
      //     ),
      //   ],
      // ),
      //nge build ulang widget berdasarkan state(data terbaru) biar ganteng
      body: BlocBuilder<AppBloc,AppState>(
        builder: (context,state) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://picsum.photos/300/400"), // Berguna setiap login atau direfresh data dummy fotonya terganti 
                  ),
                  title: Text(
                    'Nama : ${state.loginUser!.member!.namaMember}',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: primer0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    'Email :  ${state.loginUser!.member!.emailMember}' ,
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
                  padding: const EdgeInsets.all(20),
                  width: mediaQueryWidth,
                  height: bodyheight * 0.19,
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
                        
                        'Tanggal Lahir : ${state.loginUser!.member!.tanggalLahirMember}', 
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
                        'No Telp : ${state.loginUser!.member!.noTelp}',
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
                        
                        'Masa Aktif : ${state.loginUser!.member!.tanggalKedaluwarsa}',
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
                        'Saldo Deposit : ${state.loginUser!.member!.saldoDeposit}',
                        style: GoogleFonts.varelaRound(
                          color: primer0,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
