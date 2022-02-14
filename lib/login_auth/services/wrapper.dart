import 'package:flutter/material.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:hpdeterminer/login.dart';
import 'package:hpdeterminer/login_auth/models/user_model.dart';
import 'package:hpdeterminer/login_auth/services/auth_service.dart';
import 'package:hpdeterminer/new_splash.dart';
import 'package:hpdeterminer/splashscreen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot){
          if (snapshot.connectionState == ConnectionState.active){
            final User? user = snapshot.data;
            return user == null? splash(): splashh();
          }
          else{
            return Scaffold(body: Center(child: CircularProgressIndicator(),),);
          }
        }

    );
  }
}
