import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wtm_savings_app/features/account/models/user.dart';

class SignupRepository{
  var auth = FirebaseAuth.instance;
  /// Create user in firebase auth
  Future<void> registerUser({required String email, required String password}) async{

    await auth.createUserWithEmailAndPassword(email: email, password: password);

  }

  /// save user details to firestore
  Future<void> saveUser({required UserModel user})async{
    await FirebaseFirestore.instance
        .collection("users")
        .doc(user.emailAddress)
        .set(user.toJson());
  }
}