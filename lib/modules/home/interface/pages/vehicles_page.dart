import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:rutea_app/core/widgets/widgets.dart';

class VehiclesPage extends StatelessWidget {
  const VehiclesPage({super.key});
  @override
  Widget build(BuildContext context) => SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingS),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Mis Vehículos',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: AppSizes.fontL,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder:
                  (context, index) => VehicleCard(
                    maintenanceDate: '21/08/2002',
                    carType: 'Honda CRV',
                    numberPlate: 'ABC 123',
                  ),
            ),
          ),
        ],
      ),
    ),
  );
}
