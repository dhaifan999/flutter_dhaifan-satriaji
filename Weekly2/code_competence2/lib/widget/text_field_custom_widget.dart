import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final bool isValidTextField;
  final String errorMessage;
  final String hintText;
  final bool isObsucreText;
  final Widget? suffixIconWidget;
  final Widget? fillColor;
  final bool isReadOnly;
  final TextInputType? keyboardType;
  final String? initialValue;
  final int maxLines;
  const CustomTextField({
    super.key,
    this.onChanged,
    required this.isValidTextField,
    required this.errorMessage,
    required this.hintText,
    this.isObsucreText = false,
    this.isReadOnly = false,
    this.suffixIconWidget,
    this.fillColor,
    this.keyboardType = TextInputType.text,
    this.initialValue,
    this.maxLines = 999,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isReadOnly,
      keyboardType: keyboardType,
      onChanged: onChanged,
      obscureText: isObsucreText,
      initialValue: initialValue,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: hintText,
        errorText: isValidTextField ? null : errorMessage,
        suffixIcon: suffixIconWidget,
        fillColor: Colors.blueGrey,
      ),
    );
  }
}
