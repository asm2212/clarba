import 'package:clarba/core/theme/app_palette.dart';
import 'package:clarba/features/auth/presentation/pages/register_screen.dart';
import 'package:clarba/features/auth/presentation/widgets/auth_field.dart';
import 'package:clarba/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
  
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
                "Login",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
           
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
              const AuthGradientButton(buttonText: "Login"),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> const RegisterScreen()),);
                }
                ,
                child: RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                      TextSpan(
                        text: "Register",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppPalette.gradient2,
                            fontWeight: FontWeight.bold),
                      )
                    ])),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
