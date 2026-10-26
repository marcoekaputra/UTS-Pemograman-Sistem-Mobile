import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/menu_list_page.dart';

void main() {
  runApp(const KantinApp());
}

class KantinApp extends StatelessWidget {
  const KantinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kantin Teknik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFF8F0),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD84315),
          primary: const Color(0xFFD84315),
          secondary: const Color(0xFFFF8F00),
        ),
        useMaterial3: true,
      ),
      home: const MenuListPage(),
    );
  }
}