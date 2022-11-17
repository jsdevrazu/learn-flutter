// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learn/configs/colors.dart';
import 'package:learn/screen/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<void> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth!.accessToken,
        idToken: googleAuth.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      print(user);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/background.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "Sign in to continue",
                    style: TextStyle(fontSize: 16, color: bgDarkGray),
                  ),
                  Text(
                    "Mango",
                    style: TextStyle(fontSize: 50, color: white, shadows: [
                      BoxShadow(
                          color: Colors.green.shade600,
                          offset: Offset(3, 3),
                          blurRadius: 5)
                    ]),
                  ),
                  SizedBox(height: 30),
                  SignInButton(
                    Buttons.Google,
                    text: "Sign In with Google",
                    onPressed: () async {
                      await _googleSignUp().then((value) =>
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen())));
                    },
                  ),
                  SignInButton(
                    Buttons.Apple,
                    text: "Sign In with Apple",
                    onPressed: () {},
                  ),
                  SizedBox(height: 25),
                  Text(
                    "By signing you are agreeing to",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Terms and Privacy Policy",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
