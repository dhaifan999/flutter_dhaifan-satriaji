import 'package:code_competence1/provider/contact_us_provider.dart';
import 'package:code_competence1/widget/show_dialog_widget.dart';
import 'package:code_competence1/widget/button_custom_widget.dart';
import 'package:code_competence1/widget/text_field_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    final contactUsProvider = Provider.of<ContactUsProvider>(context);
    return SingleChildScrollView(
      child: Container(
        color: Colors.blue,
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Contact Us',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Include an email and phone number so visitors can get in touch with you on their first attempt. Include a short form using fields that'll help your business understand who's contacting them. Have a call-to-action to provide visitors with another action to take if they choose not to complete the form.",
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              CustomTextField(
                hintText: 'First Name',
                onChanged: (value) {
                  contactUsProvider.validatefirstname(value);
                },
                errorMessage: contactUsProvider.errorfirstnameMessage,
                isValidTextField: contactUsProvider.isfirstnameValid,
              ),
              CustomTextField(
                hintText: 'Last Name',
                onChanged: (value) {
                  contactUsProvider.validatelastname(value);
                },
                errorMessage: contactUsProvider.errorlastnameMessage,
                isValidTextField: contactUsProvider.islastnameValid,
              ),
              CustomTextField(
                onChanged: (value) {
                  contactUsProvider.validateEmail(value);
                },
                isValidTextField: contactUsProvider.isEmailValid,
                errorMessage: contactUsProvider.errorEmailMessage,
                hintText: 'Email',
              ),
              CustomButton(
                onPressed: contactUsProvider.isButtonfirstnameDisable &&
                        contactUsProvider.isButtonlastnameDisable &&
                        contactUsProvider.isButtonEmailValid
                    ? () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              Consumer<ContactUsProvider>(
                            builder: (context, contactUsProvider, _) =>
                                AlertDialog(
                              title: const Text('Confirmation'),
                              content: const Text(
                                  'Are you sure want to submit this form?'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      shape: const RoundedRectangleBorder(),
                                      context: context,
                                      builder: ((context) =>
                                          const DialogBottomContactUs(
                                            title: '',
                                          )),
                                    );
                                  },
                                  child: const Text('Submit'),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    : null,
                isIcon: true,
                title: 'Submit',
                padding: const EdgeInsets.all(24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
