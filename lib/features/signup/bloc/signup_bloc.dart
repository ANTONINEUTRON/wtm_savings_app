

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_savings_app/features/signup/bloc/signup_state.dart';
import 'package:wtm_savings_app/features/signup/repository/signup_repository.dart';

class SignupBloc extends Cubit<SignupState>{
  SignupBloc(): super(SignupState.empty);

  SignupRepository signupRepository = SignupRepository();

  void registerUser({
    required String fullName,
    required String emailAddress,
    required String password,
  })async {
    //show processing state
    emit(state.copyWith(signupStatus: SignupStatus.Processing));

    try{

      print("Got to try catch section");
      await signupRepository.registerUser(
        email: emailAddress,
        password: password,
      );

      emit(state.copyWith(signupStatus: SignupStatus.Successful));

    } on FirebaseAuthException catch (e) {
      print("Got to firebase error section");
      emit(state.copyWith(signupStatus: SignupStatus.Error));
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print("Got to error section");
      emit(state.copyWith(signupStatus: SignupStatus.Error));
      print(e);
    }
  }
}