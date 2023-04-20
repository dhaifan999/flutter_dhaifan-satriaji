import 'package:code_competence1/provider/login_provider.dart';
import 'package:code_competence1/widget/button_custom_widget.dart';
import 'package:code_competence1/widget/text_field_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context); //bisa tambah
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset('assets/doormat.png', width: 150, height: 150),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextField(
                    hintText: 'Username',
                    onChanged: (value) {
                      loginProvider.validateUsername(value);
                    },
                    isValidTextField: loginProvider.isUsernameValid,
                    errorMessage: loginProvider.errorUsernameMessage,
                  ),
                  CustomTextField(
                    onChanged: (value) {
                      loginProvider.validatePassword(value);
                    },
                    isObsucreText: loginProvider.isHidePassword,
                    isValidTextField: loginProvider.isPasswordValid,
                    errorMessage: loginProvider.errorPasswordMessage,
                    hintText: 'Password',
                    suffixIconWidget: IconButton(
                      onPressed: () {
                        loginProvider.showHidePassword();
                      },
                      icon: loginProvider.isHidePassword
                          ? const Icon(Icons.lock)
                          : const Icon(
                              Icons.lock_open,
                            ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              onPressed: loginProvider.isButtonUsernameDisable &&
                      loginProvider.isButtonPasswordDisable
                  ? () {
                      loginProvider.navigateToDashboard(context);
                    }
                  : null,
              isIcon: true,
              title: 'Login',
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
            ),
            CustomButton(
              onPressed: () {
                loginProvider.navigateToRegisterPage(context);
              },
              title: 'Register',
              padding: const EdgeInsets.only(left: 24, right: 24),
            )
          ],
        ),
      ),
    );
  }
}
