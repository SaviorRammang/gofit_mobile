part of 'app_bloc.dart';


class AppState{
  LoginUser? loginUser;

  AppState({
    this.loginUser
  });


    AppState copyWith({LoginUser? loginUser}){
    return AppState(
      loginUser: loginUser ?? this.loginUser 
    );
  }
}