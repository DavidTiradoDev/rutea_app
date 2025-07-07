import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:rutea_app/core/widgets/widgets.dart';
import 'package:unicons/unicons.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.paddingS,
            vertical: AppSizes.paddingS,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                'Acá podrás encontrar consejos para tus vehículos',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: AppSizes.fontL,
                ),
              ),
              TipsButton(
                carType: 'Automóvil',
                icon: Icon(UniconsLine.car),
                onTap: () {
                  debugPrint('Automovil Tip Screen');
                },
              ),
              TipsButton(
                carType: 'Motocicleta',
                icon: Icon(Icons.motorcycle_rounded),
                onTap: () {
                  debugPrint('Motocicleta Tip Screen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
