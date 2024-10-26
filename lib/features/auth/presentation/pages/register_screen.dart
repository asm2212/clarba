import 'package:clarba/core/theme/app_palette.dart';
import 'package:clarba/features/auth/presentation/widgets/auth_field.dart';
import 'package:clarba/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              AuthField(
                hintText: "Name",
                controller: nameController,
                isObscureText: false,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: "Email",
                controller: emailController,
                isObscureText: false,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: "Password",
                controller: passwordController,
                isObscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const AuthGradientButton(),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                    TextSpan(
                      text: "Login",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPalette.gradient2,
                          fontWeight: FontWeight.bold),
                    )
                  ])),
            ]),
          ),
        ),
      ),
    );
  }
}
