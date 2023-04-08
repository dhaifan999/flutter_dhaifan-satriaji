import 'package:flutter/material.dart';

class DetailArguments {
  final String name;
  final String image;

  DetailArguments({
    required this.name,
    required this.image,
  });
}

class DetailPages extends StatefulWidget {
  const DetailPages({super.key});

  @override
  State<DetailPages> createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
  @override
  Widget build(BuildContext context) {
    final detail =
        ModalRoute.of(context)?.settings.arguments as DetailArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                detail.image,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              detail.name,
            ),
          ],
        ),
      ),
    );
  }
}
