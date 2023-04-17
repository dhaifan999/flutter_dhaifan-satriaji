import 'package:assets/pages/food/food_view_model.dart';
import 'package:assets/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assets/provider/img_provider.dart';
import 'package:assets/pages/detail_img.dart';
import 'package:assets/stores/contact_stores.dart' as contact_store;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => contact_store.Contact(),
        ),
        ChangeNotifierProvider<PhotosProvider>(
          create: (_) => PhotosProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FoodViewModel(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        '/detail': (context) => const DetailPages(),
      },
    );
  }
}
