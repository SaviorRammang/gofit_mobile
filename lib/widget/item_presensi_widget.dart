import 'package:gofit_10662/Pages/InstrukturPages/presensi/detail_presensi_instruktur.dart';
import 'package:gofit_10662/style/color_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemPresensiWidget extends StatelessWidget {
  String image;
  String nama;
  ItemPresensiWidget({super.key, required this.image, required this.nama});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailPresensiScreen(image: image, nama: nama);
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          color: primer1,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(image),
          ),
          title: const Text("Minggu, 21 Mei 2023"),
          subtitle: Text(nama),
        ),
      ),
    );
  }
}
