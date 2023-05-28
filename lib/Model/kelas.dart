import 'dart:developer';


class Kelas{
  String? idKelas;
  String? namaKelas;
  String? hargaKelas;

  Kelas({required this.idKelas, this.namaKelas, this.hargaKelas});

  factory Kelas.fromJson(Map<String, dynamic> json){
    return Kelas(
      idKelas: json['id'].toString(),
      namaKelas: json['nama_kelas'].toString(),
      hargaKelas: json['harga_kelas'].toString(),
    );
  }


}