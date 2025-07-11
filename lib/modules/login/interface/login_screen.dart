import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:rutea_app/core/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingS),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Rutea',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSizes.fontM,
                    ),
                  ),
                ),
                Text(
                  'Email',
                  style: GoogleFonts.montserrat(
                    fontSize: AppSizes.fontM,
                    color: AppColors.text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextFormFieldInput(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Ingresa tu email',
                  controller: TextEditingController(),
                  inputFormatters: [],
                ),
                SizedBox(height: 10),
                Text(
                  'Contraseña',
                  style: GoogleFonts.montserrat(
                    fontSize: AppSizes.fontM,
                    color: AppColors.text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextFormFieldInput(
                  hintText: 'Ingresa tu contraseña',
                  controller: TextEditingController(),
                  isPassword: true,
                  inputFormatters: [],
                ),
                SizedBox(height: 10),
                Center(
                  child: AppButton(
                    title: 'Ingresar',
                    onTap: () {
                      // TODO: Ingresar método para validar los datos ingresados y luego pasar al home
                      context.go('/home');
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.48),
                Center(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      context.push('/register');
                    },
                    child: Text(
                      '¿No tienes cuenta? Regístrate',
                      style: GoogleFonts.montserrat(
                        color: AppColors.subtitle,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
