import 'package:flutter/material.dart';
import 'package:gofit_10662/Model/instruktur.dart';
import 'package:gofit_10662/Model/kelas.dart';

class JadwalUmum{
  String? idJadwalUmum;
  String? hari;
  String? idKelas;
  String? jamJadwalUmum;
  Kelas? kelas;
  Instruktur? instruktur;

  JadwalUmum({required this.idJadwalUmum, required this.hari , required this.idKelas ,required  this.jamJadwalUmum , required this.kelas, required this.instruktur});

  factory JadwalUmum.fromJson(Map<String, dynamic> json){
    return JadwalUmum(
      idJadwalUmum: json['id'].toString(),
      hari: json['hari_jadwal_umum'].toString(), 
      idKelas: json['id_kelas'].toString(), 
      jamJadwalUmum: json['jam_jadwal_umum'].toString(), 
      kelas: Kelas.fromJson(json['kelas']),
      instruktur : Instruktur.fromJson(json['instruktur']),
      // noTelp: json['no_telp'].toString()
      );
  }
}

