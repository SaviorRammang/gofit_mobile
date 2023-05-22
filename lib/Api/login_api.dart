import 'dart:developer';
import 'package:gofit_10662/Model/login_user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// import global
import 'package:gofit_10662/global.dart';


class AuthApi{
    Future<LoginUser?> login({required String email, required String password}) async {
      String loginURL = '${GlobalGofit().url}/loginMobile'; 
      try{
        var loginResponse = await http.post(Uri.parse(loginURL), body: {'email': email, 'password' : password});
      if(loginResponse.statusCode == 200){
        var loginObject = json.decode(loginResponse.body);
        inspect(loginObject);
        return LoginUser.createLoginUser(loginObject);            
      // }else if(loginResponse.statusCode == 400){}
      }
      }catch(e){
        inspect(e);
        return null;
      }
    }
}