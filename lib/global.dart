import 'package:gofit_10662/Model/member.dart';
import 'package:gofit_10662/Pages/MemberPages/home_member.dart';
import 'package:gofit_10662/Pages/MemberPages/index_member.dart';

class GlobalGofit{
   String url  = 'http://192.168.77.50:5000/api';


    var routesGofit = {
        '/homemember': (context) =>  HomePageMember(),      
    };

    // Member? member; 
    // = Member(id: '', idUser: '', namaMember: '', usernameMember: '', tanggalLahirMember: '', emailMember: '', alamatMember:'', noTelp:'', tanggalKedaluwarsa: '');
}

