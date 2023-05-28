
import 'package:gofit_10662/Model/member.dart';
import 'package:gofit_10662/Pages/MemberPages/home_member.dart';
import 'package:gofit_10662/Pages/MemberPages/index_member.dart';
import 'package:gofit_10662/Pages/InstrukturPages/home/home_page_instruktur.dart';
import 'package:gofit_10662/Pages/InstrukturPages/navigasi_instruktur.dart';
import 'package:gofit_10662/Umum/umum_jadwal.dart';

class GlobalGofit{
   String url  = 'http://192.168.77.50:5000/api';


    var routesGofit = {
        '/homemember': (context) =>  HomePageMember(), 
        '/umuminformasi' : (context) => JadwalPage(),
        '/homeinstruktur' : (context) => InstrukturNavigasi(),    
    };

    // Member? member; 
    // = Member(id: '', idUser: '', namaMember: '', usernameMember: '', tanggalLahirMember: '', emailMember: '', alamatMember:'', noTelp:'', tanggalKedaluwarsa: '');
}

