import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';

class TipsButton extends StatelessWidget {
  const TipsButton({
    super.key,
    required this.carType,
    required this.icon,
    required this.onTap,
  });

  final String carType;
  final Icon icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(AppSizes.radiusS),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.paddingS,
          vertical: AppSizes.paddingS,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.paddingS,
                vertical: AppSizes.paddingS,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(AppSizes.radiusS),
              ),
              child: icon,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Consejos para tu',
                  style: GoogleFonts.montserrat(
                    fontSize: AppSizes.fontL,
                    color: AppColors.text,
                  ),
                ),
                Text(
                  carType,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontL,
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
