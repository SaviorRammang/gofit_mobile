class Instruktur{
  // id 	nama 	username 	email 	role 	email_verified_at 	password
  final String id;
  final String idUser;
  final String namaInstruktur;
  final String usernameInstruktur;
  final String noTelp;
  final String alamatInstruktur;
  final String emailInstruktur;

  Instruktur({required this.id,required this.idUser, required this.namaInstruktur,required this.usernameInstruktur, required this.alamatInstruktur,required this.emailInstruktur, required this.noTelp});

  factory Instruktur.fromJson(Map<String,dynamic> json){
    return Instruktur(
      id: json['id_instruktur']?.toString() ?? '',
      idUser: json['id_user']?.toString() ?? '',
      namaInstruktur : json['nama_instruktur']?.toString() ?? '',
      usernameInstruktur : json['username_instruktur']?.toString() ?? '',
      noTelp : json['no_telp_instruktur']?.toString() ?? '',
      emailInstruktur : json['email_instruktur']?.toString() ?? '',
      alamatInstruktur : json['alamat_instruktur']?.toString() ?? '',
    );
  }
}
