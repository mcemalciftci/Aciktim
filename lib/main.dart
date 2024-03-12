import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBptLr2Ao4uQhhr1hbdNYt4Lo22Wx3kbxo",
          appId: "1:331103408144:android:758fecb82fb490e4fe7a95",
          messagingSenderId: " ",
          projectId: "cook-3f0f9"));

  runApp(const MyApp());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(children: [
        Image.asset("assets/jpg/giris.jpg"),
        const SizedBox(height: 15),
        Text(
          "ACIKTIM",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ]),
      backgroundColor: Colors.white,
      nextScreen: const loginpage(),
      splashIconSize: 290,
      duration: 2300,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
