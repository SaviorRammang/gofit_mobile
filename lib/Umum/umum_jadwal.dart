import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:gofit_10662/Api/umum_jadwal_api.dart';
import 'package:gofit_10662/Model/jadwal_umum.dart';
import 'package:gofit_10662/Umum/umum_jadwal.dart';
import 'package:gofit_10662/global.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({super.key});

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  List<JadwalUmum> jadwalUmum = [];
  
  JadwalUmumApi jadwalUmumApi = JadwalUmumApi();
  getJadwal () async{
    jadwalUmum =  await jadwalUmumApi.getJadwalPublic();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getJadwal();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informasi Gofit'),),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: jadwalUmum.length,
                itemBuilder: (context, index) => cardJadwal(jadwalUmum[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget cardJadwal(JadwalUmum jd){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(jd.kelas!.namaKelas ?? ''),
          ),
          textIcon(jd.hari, Icons.calendar_month),
          textIcon(jd.instruktur?.namaInstruktur, Icons.person),
          textIcon('${jd.jamJadwalUmum}', Icons.watch_later_outlined),
          textIcon('RP.${jd.kelas!.hargaKelas} ', Icons.money),
          // textIcon('${jd.jamMulai} - ${jd.jamSelesai}', Icons.watch_later_outlined),
        ],
      ),
    )),
  );
}

Widget textIcon(String? text, IconData ic) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Row(
            children: [
              Icon(ic),
              SizedBox(width: 10),
              Text(text ?? '' ),
            ],
          ),
  );
}

