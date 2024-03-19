
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository{
  var auth = FirebaseAuth.instance;

  Future<void> loginUser({required String email,required String password})async{
    await auth.signInWithEmailAndPassword(email: email, password: password,);
  }
}