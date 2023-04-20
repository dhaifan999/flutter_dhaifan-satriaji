// ignore_for_file: unused_field

import 'package:code_competence1/screen/login_screen.dart';
import 'package:code_competence1/utils/shared_pref.dart';
import 'package:code_competence1/widget/button_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileSheet extends StatefulWidget {
  const ProfileSheet({super.key});

  @override
  State<ProfileSheet> createState() => _ProfileSheetState();
}

class _ProfileSheetState extends State<ProfileSheet> {
  String _username = "";
  String _password = "";
  void initial() async {
    _username = await getToken();
    _password = await getToken();
    setState(() {});
  }

  @override
  void initState() {
    initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          const CircleAvatar(
            radius: 65,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                ' $_username',
                style: GoogleFonts.montserrat(
                    fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.clear();
              // ignore: use_build_context_synchronously
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const LoginScreen(
                      title: '',
                    ),
                  ),
                  (route) => false);
            },
            isIcon: true,
            title: 'Log Out',
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
          ),
        ],
      ),
    );
  }
}
