import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_email/pages/home_page.dart';
import 'package:firebase_authentication_email/pages/login_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // first part
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          // user is logged in
          if(snapshot.hasData){
            return HomePage();
          }else{
          // user is not logged in
          return LoginPage();
          }
        }),
    );
  }
}