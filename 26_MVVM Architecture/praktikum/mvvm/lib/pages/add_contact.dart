import 'package:flutter/material.dart';
import 'package:assets/pages/contact.dart';
import 'package:assets/models/contact_model.dart';
import 'package:provider/provider.dart';
import 'package:assets/stores/contact_stores.dart' as contact_store;

class AddContact extends StatefulWidget {
  const AddContact({super.key, required String title});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  String name = '';
  String phoneNumber = '';
  var nameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Phone Book Contact'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text('Name'),
              TextField(
                controller: nameController,
                onChanged: (String value) {
                  name = value;
                },
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              ),
              const Text('Phone Number'),
              TextField(
                controller: phoneNumberController,
                onChanged: (String value) {
                  phoneNumber = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (!formKey.currentState!.validate()) return;

                  formKey.currentState!.save();

                  contactProvider.add(
                    GetContact(name: name, phoneNumber: phoneNumber),
                  );
                },
                child: const Text('Add Number'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return const ContactPage(
                          title: '',
                        );
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        final tween = Tween(begin: 0.0, end: 1.0);
                        return FadeTransition(
                          opacity: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Text('Go To Contact Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
