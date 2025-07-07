import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';

class MaintenanceCard extends StatelessWidget {
  const MaintenanceCard({
    super.key,
    required this.maintenanceDate,
    required this.manintenanceType,
    required this.onTap,
    required this.km,
  });

  final String maintenanceDate;
  final String manintenanceType;
  final String km;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(AppSizes.radiusS),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  manintenanceType,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontM,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Último cambio: ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: AppColors.text,
                    ),
                    children: [
                      TextSpan(
                        text: km,
                        style: GoogleFonts.montserrat(
                          color: AppColors.subtitle,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Fecha: ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: AppColors.text,
                    ),
                    children: [
                      TextSpan(
                        text: maintenanceDate,
                        style: GoogleFonts.montserrat(
                          color: AppColors.subtitle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radiusS),
              child: Image.network('https://placekittens.com/130/70'),
            ),
          ],
        ),
      ),
    );
  }
}
