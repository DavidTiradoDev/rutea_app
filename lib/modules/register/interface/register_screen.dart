import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:rutea_app/core/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rutea',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: AppSizes.fontM,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingS),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  'Crea tu cuenta aquí',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontL,
                  ),
                ),
                Text(
                  'Nombres',
                  style: GoogleFonts.montserrat(
                    fontSize: AppSizes.fontM,
                    color: AppColors.text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                _textFormFieldInput(
                  hintText: 'Ingresa tus nombres',
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                Text(
                  'Apellidos',
                  style: GoogleFonts.montserrat(
                    fontSize: AppSizes.fontM,
                    color: AppColors.text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                _textFormFieldInput(
                  hintText: 'Ingresa tus apellidos',
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                Text(
                  'Correo',
                  style: GoogleFonts.montserrat(
                    fontSize: AppSizes.fontM,
                    color: AppColors.text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                _textFormFieldInput(
                  hintText: 'Ingresa tu correo',
                  controller: TextEditingController(),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                Text(
                  'Contraseña',
                  style: GoogleFonts.montserrat(
                    fontSize: AppSizes.fontM,
                    color: AppColors.text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                _textFormFieldInput(
                  hintText: 'Ingresa tu contraseña',
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  obscureText: true,
                ),
                Text(
                  'Confirmar contraseña',
                  style: GoogleFonts.montserrat(
                    fontSize: AppSizes.fontM,
                    color: AppColors.text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                _textFormFieldInput(
                  hintText: 'Ingresa nuevamente tu contraseña',
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  obscureText: true,
                ),
                SizedBox(height: 10),
                AppButton(
                  title: 'Confirmar',
                  onTap: () {
                    // TODO: Ingresar método para validar datos y crear nuevo usuario
                    context.go('/home');
                  },
                ),
                SizedBox(height: 5),
                Center(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      context.go('/login');
                    },
                    child: Text(
                      '¿Ya tienes cuenta?\nInicia sesión',
                      textAlign: TextAlign.center,
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

  Container _textFormFieldInput({
    required String hintText,
    required TextEditingController controller,
    TextInputType? keyboardType,
    required bool obscureText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusS),
        border: Border.all(color: AppColors.lightGrey),
        color: AppColors.lightGrey,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: GoogleFonts.montserrat(),
        ),
        style: GoogleFonts.montserrat(color: AppColors.text),
        keyboardType: keyboardType,
        cursorColor: AppColors.text,
        obscureText: obscureText,
      ),
    );
  }
}
