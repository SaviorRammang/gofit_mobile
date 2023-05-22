import 'user.dart';
import 'instruktur.dart';
import 'pegawai.dart';
import 'member.dart';

class LoginUser{
  User? user;
  // ? agar nullable
  Pegawai? pegawai;
  Member? member;
  Instruktur? instruktur;

  LoginUser({required this.user,this.instruktur,this.member,this.pegawai});

  factory LoginUser.createLoginUser(Map<String,dynamic> object){
    if (object['MO'] !=   null) {
      return LoginUser(
        user:  User.fromJson(object['user']),
        pegawai: Pegawai.fromJson(object['pegawai']),
      );
    } else if (object['Member'] !=   null) {
      return LoginUser(
        user: User.fromJson(object['user']),
        member: Member.fromJson(object['Member'])
      );
    } else if (object['Instruktur'] !=   null) {
      return LoginUser(
        user: User.fromJson(object['user']),
        instruktur: Instruktur.fromJson(object['instruktur'])//object ['instruktur']['id_instruktur'].toString(),
      );
    } else {
      return LoginUser(
        user : User.fromJson(object['user']),
      );
    }
  }
}