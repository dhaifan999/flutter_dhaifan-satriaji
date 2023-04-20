import 'package:code_competence1/provider/register_provider.dart';
import 'package:code_competence1/widget/button_custom_widget.dart';
import 'package:code_competence1/widget/header_widget.dart';
import 'package:code_competence1/widget/text_field_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterProvider registerProvider = Provider.of<RegisterProvider>(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: const Header(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/doormat.png', width: 150, height: 150),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomTextField(
                    onChanged: (value) {
                      registerProvider.validateEmail(value);
                    },
                    isValidTextField: registerProvider.isEmailValid,
                    errorMessage: registerProvider.errorEmailMessage,
                    hintText: 'Email',
                  ),
                  CustomTextField(
                    hintText: 'Username',
                    onChanged: (value) {
                      registerProvider.validateUsername(value);
                    },
                    isValidTextField: registerProvider.isUsernameValid,
                    errorMessage: registerProvider.errorUsernameMessage,
                    initialValue: '',
                  ),
                  CustomTextField(
                    onChanged: (value) {
                      registerProvider.validatePassword(value);
                    },
                    isObsucreText: registerProvider.isHidePassword,
                    isValidTextField: registerProvider.isPasswordValid,
                    errorMessage: registerProvider.errorPasswordMessage,
                    hintText: 'Password',
                    suffixIconWidget: IconButton(
                      onPressed: () {
                        registerProvider.showHidePassword();
                      },
                      icon: registerProvider.isHidePassword
                          ? const Icon(Icons.lock)
                          : const Icon(
                              Icons.lock_open,
                            ),
                    ),
                  ),
                  CustomTextField(
                    onChanged: (value) {
                      registerProvider.validateConfirmPassword(value);
                    },
                    isObsucreText: registerProvider.isHideConfirmPassword,
                    isValidTextField: registerProvider.isConfirmPasswordValid,
                    errorMessage: registerProvider.errorConfirmPasswordMessage,
                    hintText: 'Confirm Password',
                    suffixIconWidget: IconButton(
                      onPressed: () {
                        registerProvider.showHideConfirmPassword();
                      },
                      icon: registerProvider.isHideConfirmPassword
                          ? const Icon(Icons.lock)
                          : const Icon(
                              Icons.lock_open,
                            ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              onPressed:
                  registerProvider.disableButtonRegister() ? () {} : null,
              title: 'Register',
              padding: const EdgeInsets.only(left: 24, right: 24),
            )
          ],
        ),
      ),
    );
  }
}
