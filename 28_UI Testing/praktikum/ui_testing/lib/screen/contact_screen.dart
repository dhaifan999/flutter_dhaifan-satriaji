import 'package:flutter/material.dart';
import 'package:ui_testing/model/contact_model.dart';
import 'package:ui_testing/styles/text_style.dart';
import 'package:ui_testing/widget/contact_widget.dart';
import 'package:ui_testing/widget/header_widget.dart';
import 'package:ui_testing/widget/list_widget.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  final List<ContactModel> _contactModels = [];

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            ContactWidget(
              nameController: _nameController,
              phoneController: _phoneController,
              onPressed: () {
                _contactModels.add(
                  ContactModel(
                    name: _nameController.text,
                    phone: _phoneController.text,
                  ),
                );
                _nameController.clear();
                _phoneController.clear();

                setState(() {});
              },
            ),
            const SizedBox(height: 20),
            Text(
              'List Contacts',
              style: TextCustome().m3Medium,
            ),
            if (_contactModels.isNotEmpty) ...[
              ListContactWidget(
                contactModels: _contactModels,
                nameController: _nameController,
                phoneController: _phoneController,
              ),
            ] else ...[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Your contact is still empty'),
              )
            ]
          ],
        ),
      ),
    );
  }
}
