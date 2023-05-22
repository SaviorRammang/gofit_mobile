part of 'app_bloc.dart';


//* Representasi Abstrak Semua Event Pada Form login
abstract class AppEvent{}


class LoginSubmitted extends AppEvent{
  final LoginUser? loginUser;

  LoginSubmitted({this.loginUser});
}
