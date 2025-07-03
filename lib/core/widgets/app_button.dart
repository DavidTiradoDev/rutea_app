import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, required this.onTap});

  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: BorderRadius.circular(AppSizes.radiusS),
        ),
        child: Text(
          title,
          style: GoogleFonts.montserrat(
            color: AppColors.background,
            fontSize: AppSizes.fontM,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
