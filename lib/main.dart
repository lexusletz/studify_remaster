import 'package:flutter/material.dart';
import 'package:studify_remaster/Screens/Home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialization(null);

  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}
