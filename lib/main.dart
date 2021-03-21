import 'package:dailyjee/screen/auth/OTPVerify.dart';
import 'package:dailyjee/screen/auth/logIn.dart';
import 'package:dailyjee/screen/auth/resetPassword.dart';
import 'package:dailyjee/screen/auth/signUp.dart';
import 'package:dailyjee/screen/profile/grade.dart';
import 'package:dailyjee/screen/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Grade(),
  ));
}
// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/login',
//     routes: {
//       '/': (context) => Splash(),
//       '/login': (context) => LogIn(),
//       '/signup': (context) => SignUp(),
//       '/resetpassword': (context) => ResetPassword(),
//       '/otpverify': (context) => OTPVerify(),
//     },
//   ));
// }
