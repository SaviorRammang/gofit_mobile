import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gofit_10662/Model/login_user.dart';


part 'app_event.dart';
part 'app_state.dart';


class AppBloc extends Bloc<AppEvent, AppState>{
  AppBloc() : super(AppState()){
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  _onLoginSubmitted(LoginSubmitted event, Emitter<AppState> emit){
    emit(state.copyWith(loginUser: event.loginUser));
  }
}