import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:assets/pages/header.dart';
import 'package:assets/service/img_service.dart';
import 'package:assets/widget/button_custom.dart';
import 'package:assets/widget/text_field_custom.dart';

class RestApiPage extends StatefulWidget {
  const RestApiPage({super.key});

  @override
  State<RestApiPage> createState() => _RestApiPageState();
}

class _RestApiPageState extends State<RestApiPage> {
  final TextEditingController _nameController = TextEditingController();

  String image = "";

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            image.isNotEmpty
                ? SvgPicture.string(
                    image,
                    height: 100,
                    width: 100,
                  )
                : const Text("Image has not been generate"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFieldCustom(
                controller: _nameController,
                isValidTextField: true,
                errorMessage: '',
                hintText: 'Find Image',
              ),
            ),
            ButtonCustom(
              onPressed: () async {
                image = await ImageService().generateImage(
                  _nameController.text,
                );

                debugPrint("halo $image");

                setState(() {});
              },
              title: 'Generate Image',
            ),
          ],
        ),
      ),
    );
  }
}
