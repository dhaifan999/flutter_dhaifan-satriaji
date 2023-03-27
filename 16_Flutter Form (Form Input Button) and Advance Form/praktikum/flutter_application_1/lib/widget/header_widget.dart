import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/color_style.dart';
import 'package:flutter_application_1/styles/text_style.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          const SizedBox(height: 32),
          Icon(
            Icons.contacts,
            size: 22,
            color: ColorStyle().m3Color,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Create New Contacts',
              style: TextCustome().m3Medium,
            ),
          ),
          Text(
            'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
            style: TextCustome().m3Medium.copyWith(
                  fontSize: 14,
                  color: ColorStyle().m3Color,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Divider(
              color: ColorStyle().m3Color,
            ),
          ),
        ],
      ),
    );
  }
}
