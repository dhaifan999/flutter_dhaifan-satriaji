import 'package:code_competence1/utils/shared_pref.dart';
import 'package:code_competence1/widget/header_widget.dart';
import 'package:flutter/material.dart';

class DialogBottomContactUs extends StatefulWidget {
  const DialogBottomContactUs({super.key, required String title});

  @override
  State<DialogBottomContactUs> createState() => _DialogBottomContactUsState();
}

class _DialogBottomContactUsState extends State<DialogBottomContactUs> {
  String _firstname = "";
  String _lastname = "";
  String _email = "";

  Future<void> initial() async {
    _firstname = await getToken();
    _lastname = await getToken();
    _email = await getToken();
    setState(() {});
  }

  @override
  void initState() {
    initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Column(
          children: [
            Text('Name : $_firstname'),
            Text('Lastname : $_lastname'),
            Text('Email : $_email')
          ],
        ),
      ),
    );
  }
}
