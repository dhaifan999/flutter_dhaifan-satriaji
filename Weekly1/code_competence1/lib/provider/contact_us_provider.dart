import 'package:code_competence1/widget/show_dialog_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../utils/shared_pref.dart';

class ContactUsProvider with ChangeNotifier {
  String _firstname = "";
  String get firstname => _firstname;

  bool _isfirstnameValid = true;
  bool get isfirstnameValid => _isfirstnameValid;

  String _errorfirstnameMessage = "";
  String get errorfirstnameMessage => _errorfirstnameMessage;

  bool _isButtonfirstnameDisable = false;
  bool get isButtonfirstnameDisable => _isButtonfirstnameDisable;

  String _lastname = "";
  String get lastname => _lastname;

  bool _islastnameValid = true;
  bool get islastnameValid => _islastnameValid;

  String _errorlastnameMessage = "";
  String get errorlastnameMessage => _errorlastnameMessage;

  bool _isButtonlastnameDisable = false;
  bool get isButtonlastnameDisable => _isButtonlastnameDisable;

  String _email = "";
  String get email => _email;

  bool _isEmailValid = true;
  bool get isEmailValid => _isEmailValid;

  String _errorEmailMessage = "";
  String get errorEmailMessage => _errorEmailMessage;

  bool _isButtonEmailDisable = false;
  bool get isButtonEmailValid => _isButtonEmailDisable;

  void validatefirstname(String value) {
    _firstname = value;
    if (_firstname.isEmpty) {
      _isfirstnameValid = false;
      _isButtonfirstnameDisable = false;

      _errorfirstnameMessage = "firstname Tidak Boleh Kosong!";
    } else if (_firstname.length < 4) {
      _isfirstnameValid = false;
      _isButtonfirstnameDisable = false;

      _errorfirstnameMessage = "firstname harus lebih dari 4 Huruf";
    } else {
      _isfirstnameValid = true;
      _isButtonfirstnameDisable = true;
    }
    notifyListeners();
  }

  void validatelastname(String value) {
    _lastname = value;
    if (_lastname.isEmpty) {
      _islastnameValid = false;
      _isButtonlastnameDisable = false;

      _errorlastnameMessage = "lastname Tidak Boleh Kosong!";
    } else if (_lastname.length < 4) {
      _islastnameValid = false;
      _isButtonlastnameDisable = false;

      _errorlastnameMessage = "lastname harus lebih dari 4 Huruf";
    } else {
      _islastnameValid = true;
      _isButtonlastnameDisable = true;
    }
    notifyListeners();
  }

  void validateEmail(String value) {
    _email = value;
    if (_email.isEmpty) {
      _errorEmailMessage = "Email Tidak Boleh Kosong";
      _isEmailValid = false;
    } else if (!EmailValidator.validate(_email)) {
      _errorEmailMessage = "Email Tidak Sesuai";
      _isEmailValid = false;
      _isButtonEmailDisable = false;
    } else {
      _isEmailValid = true;
      _isButtonEmailDisable = true;
    }

    notifyListeners();
  }

  void navigateToDialogBottom(
    BuildContext context,
  ) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const DialogBottomContactUs(
          title: '',
        ),
      ),
    );
    saveToken(
      valueToken: _firstname,
    );
    saveToken(
      valueToken: _lastname,
    );
    saveToken(
      valueToken: _email,
    );
  }
}
