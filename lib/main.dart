import 'package:clarba/core/theme/theme.dart';
import 'package:clarba/features/auth/presentation/pages/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:AppTheme.darkThemeMode,
      home: const RegisterScreen(),
    );
  }
}
