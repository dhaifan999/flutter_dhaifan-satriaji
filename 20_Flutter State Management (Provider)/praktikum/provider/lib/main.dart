import 'package:assets/pages/detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assets/pages/home.dart';
import 'package:assets/provider/img_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PhotosProvider>(
          create: (_) => PhotosProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(
        title: 'Grid View',
      ),
      routes: {
        '/detail': (context) => const DetailPages(),
      },
    );
  }
}
