import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard({
    super.key,
    required this.maintenanceDate,
    required this.carType,
    required this.numberPlate,
  });

  final String maintenanceDate;
  final String carType;
  final String numberPlate;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        debugPrint('Card');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        width: double.infinity,
        height: size.height * 0.11,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(AppSizes.radiusS),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mantenimiento: $maintenanceDate',
                  style: GoogleFonts.montserrat(color: AppColors.subtitle),
                ),
                Text(
                  carType,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontL,
                  ),
                ),
                Text(
                  'Placa: $numberPlate',
                  style: GoogleFonts.montserrat(color: AppColors.subtitle),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radiusS),
              child: Image.network('https://placekittens.com/200/100'),
            ),
          ],
        ),
      ),
    );
  }
}
