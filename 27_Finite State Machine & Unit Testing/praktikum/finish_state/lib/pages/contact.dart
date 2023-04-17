import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assets/stores/contact_stores.dart' as contact_store;

class ContactPage extends StatelessWidget {
  const ContactPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Book Contact'),
      ),
      body: ListView.builder(
        itemCount: contactProvider.contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contactProvider.contacts[index].name),
            subtitle: Text(contactProvider.contacts[index].phoneNumber),
          );
        },
      ),
    );
  }
}
