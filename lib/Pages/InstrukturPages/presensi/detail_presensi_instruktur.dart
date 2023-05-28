import 'package:gofit_10662/style/color_style.dart';
import 'package:gofit_10662/widget/item_bottomSheat_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DetailPresensiScreen extends StatefulWidget {
  static const routename = "/DetailPresensiScreen";
  String image;
  String nama;
  DetailPresensiScreen({super.key, required this.nama, required this.image});

  @override
  State<DetailPresensiScreen> createState() => _DetailPresensiScreenState();
}

class _DetailPresensiScreenState extends State<DetailPresensiScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final paddingTop = MediaQuery.of(context).padding.top;
    final myAppBar = AppBar(
      iconTheme: IconThemeData(color: primer0),
      title: Text(
        "Detail Presensi",
        style: TextStyle(color: primer0),
      ),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0,
      elevation: 0,
      actions: [
        TextButton(
          onPressed: () {
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(60),
                  ),
                ),
                context: context,
                builder: (context) => BottomSheetWidget(
                      nama: widget.nama,
                    ));
          },
          child: const Text("Profil"),
        ),
      ],
    );
    final bodyheight =
        mediaQueryHeight - myAppBar.preferredSize.height - paddingTop;

    return Scaffold(
      backgroundColor: primer2,
      appBar: myAppBar,
      body: Container(
        padding: const EdgeInsets.all(20),
        width: mediaQueryWidth,
        height: bodyheight,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(widget.image),
                ),
                SizedBox(
                  height: bodyheight * 0.02,
                ),
                Text(
                  widget.nama,
                  style: GoogleFonts.nunito(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: primer0,
                  ),
                ),
                SizedBox(
                  height: bodyheight * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primer3,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15),
                        hintText: "Waktu Mulai"),
                  ),
                ),
                SizedBox(
                  height: bodyheight * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primer3,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15),
                        hintText: "Waktu Selesai"),
                  ),
                ),
                SizedBox(
                  height: bodyheight * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primer3,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15),
                        hintText: "Status(Keterangan)"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: bodyheight * 0.05, bottom: bodyheight * 0.02),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white, // foreground
                    ),
                    child: Text(
                      "Save",
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
