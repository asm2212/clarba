import 'package:clarba/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppPalette.gradient1,
          AppPalette.gradient2,
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: (){}, 
        style: ElevatedButton.styleFrom(
        fixedSize: Size(395, 45),
        backgroundColor: AppPalette.transparentColor,
        shadowColor: AppPalette.transparentColor
        ),
        child: Text(
          "Register",
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        ),
    );
  }
}