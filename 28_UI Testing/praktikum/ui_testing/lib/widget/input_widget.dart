import 'package:flutter/material.dart';

class InputContactWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  const InputContactWidget({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
