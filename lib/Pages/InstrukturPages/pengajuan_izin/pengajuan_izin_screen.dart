import 'package:gofit_10662/style/color_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class PengajuanIzinScreen extends StatefulWidget {
  static const routename = "/createThread";

  const PengajuanIzinScreen({super.key});

  @override
  State<PengajuanIzinScreen> createState() => _PengajuanIzinScreenState();
}

class _PengajuanIzinScreenState extends State<PengajuanIzinScreen> {
  DateTime _dueDate = DateTime.now();
  final currertDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final myAppbar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottomOpacity: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: primer1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Row(
                children: [
                  Text(
                    "Kirim",
                    style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      backgroundColor: primer3,
      appBar: myAppbar,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.black38),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tanggal Cuti",
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextButton(
                            child: Text(
                              "Pilih",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            onPressed: () async {
                              final selectDate = await showDatePicker(
                                context: context,
                                initialDate: currertDate,
                                firstDate: DateTime(1990),
                                lastDate: DateTime(currertDate.year + 5),
                              );
                              setState(() {
                                if (selectDate != null) {
                                  _dueDate = selectDate;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Text(
                        DateFormat('dd-MM-yyyy').format(_dueDate),
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.03,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: TextFormField(
                    minLines:
                        15, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: "Keterangan ?",
                      contentPadding: EdgeInsets.only(left: 15, top: 20),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
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
