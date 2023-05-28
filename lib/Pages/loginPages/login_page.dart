// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gofit_10662/Api/login_api.dart';
import 'package:gofit_10662/Bloc/app_bloc.dart';
import 'package:gofit_10662/Model/login_user.dart';
import 'package:gofit_10662/Model/member.dart';
import 'package:gofit_10662/global.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthApi authApi = AuthApi();
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  bool eyeCondition = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              // _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Go-Fit Membuat Anda Semakin FIT dan Sehat !"),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: emailControl,
          decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.email)),
        ),
        SizedBox(height: 10),
        passwordField(context),
        SizedBox(height: 10),
        BlocBuilder<AppBloc,AppState>(
          builder: (context,state){
            return ElevatedButton(
              onPressed: () async {
                setState(() {});
                LoginUser? loginUser= await AuthApi().login(email: emailControl.text, password: passwordControl.text);
                  context.read<AppBloc>().add(LoginSubmitted(loginUser: loginUser));
                inspect(AppState());
                if(loginUser?.member != null){
                  Navigator.pushNamed(context, '/homemember');
                }
                if(loginUser?.instruktur != null){
                  Navigator.pushNamed(context, '/homeinstruktur');
                } 
                if(loginUser?.pegawai != null) {
                  Navigator.pushNamed(context, '/homepegawai');
                } 
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
              "Login",
              style: TextStyle(fontSize: 20),
            ),
            );
          }
        )
      ],
    );
  }

  // // loginMember(LoginUser loginUser){
  // //   Navigator.pushNamed(context, '/homemember');
    

  // }


  TextField passwordField(context) {
    return TextField(
        controller: passwordControl,
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(onPressed: (){
            setState(() {
              eyeCondition = !eyeCondition;
            });
            // (Condition) ? true : false
          }, icon: (eyeCondition) ?  Icon(Icons.visibility_off) : Icon(Icons.remove_red_eye_outlined) )
        ),
        obscureText: eyeCondition,
      );
  }

  _forgotPassword(context) {
    return TextButton(onPressed: () {
      Navigator.pushNamed(context, '/umuminformasi');
    }, 
    child: Text("Informasi Umum ? "));
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dont have an account? "),
        TextButton(onPressed: () {}, child: Text("Sign Up"))
      ],
    );
  }
}


