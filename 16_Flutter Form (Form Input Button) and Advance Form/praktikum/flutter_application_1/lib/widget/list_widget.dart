import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/contact_model.dart';
import 'package:flutter_application_1/styles/color_style.dart';
import 'package:flutter_application_1/styles/text_style.dart';

class ListContactWidget extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final List<ContactModel> contactModels;

  const ListContactWidget({
    super.key,
    required this.contactModels,
    required this.nameController,
    required this.phoneController,
  });

  @override
  State<ListContactWidget> createState() => _ListContactWidgetState();
}

class _ListContactWidgetState extends State<ListContactWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 49, bottom: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: ColorStyle().pink,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.contactModels.length,
          itemBuilder: (context, index) {
            final data = widget.contactModels[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorStyle().primaryContainer,
                child: Text(
                  data.name.toString()[0].toUpperCase(),
                  style: TextCustome().m3TitleMedium,
                ),
              ),
              title: Text(
                data.name,
                style: TextCustome().m3Medium.copyWith(
                      fontSize: 16,
                      letterSpacing: 0.5,
                    ),
              ),
              subtitle: Text(
                data.phone,
                style: TextCustome().m3Medium.copyWith(
                      fontSize: 14,
                      letterSpacing: 0.25,
                      color: ColorStyle().m3Color,
                    ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      if (data.isEdit) {
                        data.isEdit = false;
                        widget.contactModels[index] = ContactModel(
                          name: widget.nameController.text,
                          phone: widget.phoneController.text,
                        );
                        widget.nameController.clear();
                        widget.phoneController.clear();
                      } else {
                        data.isEdit = true;
                        widget.nameController.text = data.name;
                        widget.phoneController.text = data.phone;
                      }

                      setState(() {});
                    },
                    icon: data.isEdit
                        ? const Icon(Icons.check)
                        : const Icon(Icons.edit),
                  ),
                  const SizedBox(width: 24),
                  IconButton(
                    onPressed: () {
                      widget.contactModels.removeAt(index);
                      setState(() {});
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
