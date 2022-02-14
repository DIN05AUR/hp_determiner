import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hpdeterminer/login_auth/models/user_model.dart';
import 'package:hpdeterminer/main.dart';
import 'package:hpdeterminer/register.dart';
// import 'package:patanahiyaar/models/user_model.dart';


class AuthService{
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  User? _userFromFirebase(auth.User? user){
    if (user == null){
      return null;
    }
    return User(user.uid, user.email);
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<User?> signInWithEmailAndPassword(String email, String password)async{
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password
    ).whenComplete(() => {
      // showToastt('Login Successful'),
    });
    return _userFromFirebase(credential.user);
  }

  Future<User?> createUserWithEmailAndPassword(String email, String password)async{
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password).then((value) => {
      FirebaseFirestore.instance.collection('UserData').doc(emailController.text).set(
        {'email': emailController.text,
          'username': namecontroller.text,
          'age': ageController.text

        },
      )
    });;
    DocumentSnapshot data = await FirebaseFirestore.instance.collection('UserData').doc(the_email).get();

    nick = data[namecontroller.text];
    // nick = data['username'];
    // ).then((value) => {
    //   FirebaseFirestore.instance.collection('UserData').doc(value.user!.uid).set(
    //     {'email': value.user!.email,
    //       'username': name,
    //
    //     },
    //   )
    // }
    // )
    return _userFromFirebase(auth.FirebaseAuth.instance.currentUser);
  }




  Future<void> signOut()async{
    return await _firebaseAuth.signOut();
  }

}



//  showToastt(msg) {
//   Fluttertoast.showToast(
//       msg: msg,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.SNACKBAR,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.green,
//       textColor: Colors.white
//   );
// }