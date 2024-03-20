
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_savings_app/features/login/bloc/login_state.dart';
import 'package:wtm_savings_app/features/login/repository/login_repositpry.dart';

class LoginBloc extends Cubit<LoginState>{
  LoginBloc(): super(LoginState.empty);

  LoginRepository loginRepository = LoginRepository();

  void logout()async{
    await FirebaseAuth.instance.signOut();
  }

  void login(String emailAddress, String password)async{
    emit(state.copyWith(loginStatus: LoginStatus.Processing));

    try{
      await loginRepository.loginUser(email: emailAddress, password: password);
      emit(state.copyWith(loginStatus: LoginStatus.Successful));
    }catch(e,s){
      print(e);
      emit(state.copyWith(loginStatus: LoginStatus.Error));
    }
  }

  void reset() async{
    emit(LoginState.empty);
  }

  void resetStatusToInitial() async{
    emit(state.copyWith(loginStatus: LoginStatus.Initial));
  }

  void setEmailAddress(String email){
    var newState = state.copyWith(
      emailAddress: email
    );
    emit(newState);
  }

  void setPassword(String password){
    emit(state.copyWith(password: password));
  }

  void onSubmit()async {
    // validate user inputs
    if(_isUserInputValid()) {
      // pass to repository for login
      // update state  based on response
      emit(state.copyWith(loginStatus: LoginStatus.Processing));
      try{
        await loginRepository.loginUser(email: state.emailAddress, password: state.password);
        emit(state.copyWith(loginStatus: LoginStatus.Successful));
      }catch(e,s){
        if (kDebugMode) {
          print(e);
        }
        emit(state.copyWith(loginStatus: LoginStatus.Error));
      }
    }
  }

  bool _isUserInputValid(){
    if(state.emailAddress.isEmpty){
      emit(state.copyWith(loginStatus: LoginStatus.InvalidEmailAddress));
      return false;
    }else if(state.password.isEmpty || state.password.length < 8){
      emit(state.copyWith(loginStatus: LoginStatus.InvalidPassword));
      return false;
    }

    return true;
  }
}