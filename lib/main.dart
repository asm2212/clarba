import 'package:clarba/core/secrets/app_secrets.dart';
import 'package:clarba/core/theme/theme.dart';
import 'package:clarba/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   final supabase = await Supabase.initialize(
    url:AppSecrets.supabaseUrl,
    anonKey:AppSecrets.supabaseAnonKey
   );
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
      home: const LoginScreen(),
    );
  }
}
