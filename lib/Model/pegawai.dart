class Pegawai{
  // id 	nama 	username 	email 	role 	email_verified_at 	password
  final String id;
  final String idUser;
  final String namaPegawai;
  final String noTelp;
  final String alamatPegawai;
  final String jabatanPegawai;

  Pegawai({required this.id,required this.idUser, required this.namaPegawai,required this.alamatPegawai,required this.jabatanPegawai, required this.noTelp});

  factory Pegawai.fromJson(Map<String,dynamic> json){
    return Pegawai(
      id: json['id_pegawai']?.toString() ?? '',
      idUser: json['id_user']?.toString() ?? '',
      namaPegawai : json['nama_pegawai']?.toString() ?? '',
      noTelp : json['no_telp_pegawai']?.toString() ?? '',
      jabatanPegawai : json['jabatan_pegawai']?.toString() ?? '',
      alamatPegawai : json['alamat_pegawai']?.toString() ?? '',
    );
  }
}
