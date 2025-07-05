import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:unicons/unicons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppSizes.paddingS),
        child: Column(
          children: [
            CircleAvatar(radius: 64),
            SizedBox(height: 16),
            Text(
              'David Tirado',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.fontXL,
              ),
            ),
            Text(
              'davidtirado.dev@gmail.com',
              style: GoogleFonts.montserrat(
                color: AppColors.subtitle,
                fontSize: AppSizes.fontL,
              ),
            ),
            SizedBox(height: 16),
            Column(
              spacing: 5,
              children: [
                GestureDetector(
                  onTap: () {
                    debugPrint('Funcionando');
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(AppSizes.radiusS),
                        ),
                        child: Icon(UniconsLine.user_circle),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Editar Perfil',
                        style: GoogleFonts.montserrat(fontSize: AppSizes.fontL),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    debugPrint('Funcionando');
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(AppSizes.radiusS),
                        ),
                        child: Icon(UniconsLine.car),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Mis Vehículos',
                        style: GoogleFonts.montserrat(fontSize: AppSizes.fontL),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    debugPrint('Funcionando');
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(AppSizes.radiusS),
                        ),
                        child: Icon(UniconsLine.exit),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Cerrar Sesión',
                        style: GoogleFonts.montserrat(fontSize: AppSizes.fontL),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
