import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ivykids/ui/first.dart';
import 'package:ivykids/ui/home.dart';
import 'package:ivykids/ui/login.dart';
import 'package:ivykids/ui/signup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Authentication',
    routes: {
      'Authentication': (context) => MyFirst(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home': (context) => MyHome()
    },
  ));
}