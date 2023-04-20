import 'dart:async';
import 'package:code_competence1/screen/home_screen.dart';
import 'package:code_competence1/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:code_competence1/utils/shared_pref.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void checkUserLogin() async {
    Timer(const Duration(seconds: 3), () async {
      String cekDataLogin = await getToken();

      if (cekDataLogin.isNotEmpty) {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(
              title: '',
            ),
          ),
        );
      } else {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(
              title: '',
            ),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    checkUserLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Image.asset('assets/doormat.png', width: 200, height: 200)),
    );
  }
}
