

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wtm_savings_app/features/account/models/user.dart';

class AccountRepository{
  Future<UserModel?> getUserDetails()async{
    String email =  FirebaseAuth.instance.currentUser!.email!;
    DocumentSnapshot<UserModel> documentSnapshot  = await FirebaseFirestore.instance.collection("users")
        .doc(email)
        .withConverter<UserModel>(
            fromFirestore: (snapshot, options) => UserModel.fromJson(snapshot.data() ?? {}),
            toFirestore: (userModel, options) => userModel.toJson(),
        )
        .get();
    return documentSnapshot.data();
  }
}