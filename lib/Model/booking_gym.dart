class BookingGym{
  // id 	nama 	username 	email 	role 	email_verified_at 	password
  final String noStruk;
  final String idMember;
  final String tanggalBooking;
  final String tanggalYangDiBookig;
  final String statusPresensi;
  final String sesiBooking;

    BookingGym({
      required this.noStruk,
      required this.idMember, 
      required this.tanggalBooking,
      required this.tanggalYangDiBookig, 
      required this.statusPresensi,
      required this.sesiBooking, 
      });


  factory BookingGym.fromJson(Map<String,dynamic> json){
    return BookingGym(
      noStruk: json['no_struk_booking_presensi_gym']?.toString() ?? '',
      idMember: json['id_member']?.toString() ?? '',
      tanggalBooking : json['tanggal_booking_gym']?.toString() ?? '',
      tanggalYangDiBookig : json['tanggal_yang_di_booking_gym']?.toString() ?? '',
      statusPresensi : json['status_presensi']?.toString() ?? '',
      sesiBooking : json['sesi_booking_gym']?.toString() ?? '',
    );
  }
}
