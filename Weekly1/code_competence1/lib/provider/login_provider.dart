import 'package:code_competence1/screen/home_screen.dart';
import 'package:code_competence1/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:code_competence1/utils/shared_pref.dart';

class LoginProvider with ChangeNotifier {
  // Username Property
  String _username = "";
  String get username => _username;

  bool _isUsernameValid = true;
  bool get isUsernameValid => _isUsernameValid;

  String _errorUsernameMessage = "";
  String get errorUsernameMessage => _errorUsernameMessage;

  // Password Property
  String _password = "";
  String get password => _password;

  bool _isPasswordValid = true;
  bool get isPasswordValid => _isPasswordValid;

  String _errorPasswordMessage = "";
  String get errorPasswordMessage => _errorPasswordMessage;

  bool _isHidePassword = true;
  bool get isHidePassword => _isHidePassword;

  // firstname Property
  String _firstname = "";
  String get firstname => _firstname;

  bool _isfirstnameValid = true;
  bool get isfirstnameValid => _isfirstnameValid;

  String _errorfirstnameMessage = "";
  String get errorfirstnameMessage => _errorfirstnameMessage;

  // lastname Property
  String _lastname = "";
  String get lastname => _lastname;

  bool _islastnameValid = true;
  bool get islastnameValid => _islastnameValid;

  String _errorlastnameMessage = "";
  String get errorlastnameMessage => _errorlastnameMessage;

  // Button Prorerty
  bool _isButtonUsernameDisable = false;
  bool get isButtonUsernameDisable => _isButtonUsernameDisable;

  bool _isButtonPasswordDisable = false;
  bool get isButtonPasswordDisable => _isButtonPasswordDisable;

  bool _isButtonfirstnameDisable = false;
  bool get isButtonfirstnameDisable => _isButtonfirstnameDisable;

  bool _isButtonlastnameDisable = false;
  bool get isButtonlastnameDisable => _isButtonlastnameDisable;

  void validateUsername(String value) {
    _username = value;
    if (_username.isEmpty) {
      _isUsernameValid = false;
      _isButtonUsernameDisable = false;

      _errorUsernameMessage = "Username cant empty!";
    } else if (_username.length < 4) {
      _isUsernameValid = false;
      _isButtonUsernameDisable = false;

      _errorUsernameMessage = "Username must be 4 characters!";
    } else {
      _isUsernameValid = true;
      _isButtonUsernameDisable = true;
    }
    notifyListeners();
  }

  void validatePassword(String value) {
    _password = value;
    if (_password.isEmpty) {
      _errorPasswordMessage = "Password cant empty!";
      _isPasswordValid = false;
      _isButtonPasswordDisable = false;
    } else {
      _isPasswordValid = true;
      _isButtonPasswordDisable = true;
    }
    notifyListeners();
  }

  void showHidePassword() {
    _isHidePassword = !_isHidePassword;
    notifyListeners();
  }

  void validatefirstname(String value) {
    _firstname = value;
    if (_firstname.isEmpty) {
      _isfirstnameValid = false;
      _isButtonfirstnameDisable = false;

      _errorfirstnameMessage = "firstname cant empty!";
    } else if (_firstname.length < 4) {
      _isfirstnameValid = false;
      _isButtonfirstnameDisable = false;

      _errorfirstnameMessage = "firstname must be 4 characters!!";
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

      _errorlastnameMessage = "lastname cant empty!";
    } else if (_lastname.length < 4) {
      _islastnameValid = false;
      _isButtonlastnameDisable = false;

      _errorlastnameMessage = "lastname must be 4 characters!";
    } else {
      _islastnameValid = true;
      _isButtonlastnameDisable = true;
    }
    notifyListeners();
  }

  void navigateToDashboard(
    BuildContext context,
  ) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const HomePage(
          title: '',
        ),
      ),
    );
    saveToken(
      valueToken: _username,
    );
  }

  void navigateToRegisterPage(
    BuildContext context,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const RegisterScreen(),
      ),
    );
  }
}
