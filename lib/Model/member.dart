class Member{
  // id 	nama 	username 	email 	role 	email_verified_at 	password
  final String id;
  final String idUser;
  final String namaMember;
  final String usernameMember;
  final String tanggalLahirMember;
  final String emailMember;
  final String tanggalKedaluwarsa; //* dari aktivasi ingat banggg
  final String noTelp;
  final String alamatMember;

  Member({required this.id,required this.idUser, required this.namaMember,required this.usernameMember,required this.tanggalLahirMember, required this.emailMember,required this.alamatMember,required this.noTelp,required this.tanggalKedaluwarsa, });

  factory Member.fromJson(Map<String,dynamic> json){
    return Member(
      id: json['id_member']?.toString() ?? '',
      idUser: json['id_user']?.toString() ?? '',
      namaMember : json['nama_member']?.toString() ?? '',
      emailMember : json['email_member']?.toString() ?? '',
      usernameMember : json['username_member']?.toString() ?? '',
      noTelp : json['no_telp_member']?.toString() ?? '',
      alamatMember : json['alamat_member']?.toString() ?? '',
      tanggalLahirMember : json['tanggal_lahir_member']?.toString() ?? '',
      tanggalKedaluwarsa : json['tanggal_aktivasi_member']?.toString() ?? '',
    );
  }
}
