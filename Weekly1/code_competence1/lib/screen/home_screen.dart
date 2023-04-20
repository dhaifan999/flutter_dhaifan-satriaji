// ignore_for_file: unused_field

import 'package:code_competence1/screen/contact_us_screen.dart';
import 'package:code_competence1/provider/contact_us_provider.dart';
import 'package:code_competence1/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../utils/shared_pref.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _username = "";
  void initial() async {
    _username = await getToken();
    setState(() {});
  }

  @override
  void initState() {
    initial();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final contactUsProvider = Provider.of<ContactUsProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const Header(),
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 160,
            ),
            Text(
              'WELCOME TO',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 50,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Text(
              'Flutter Project Apps',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 90,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            const ContactUsPage()
          ],
        ),
      ),
    );
  }
}
