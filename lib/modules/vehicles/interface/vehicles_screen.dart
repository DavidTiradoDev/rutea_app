import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:rutea_app/core/widgets/widgets.dart';
import 'package:unicons/unicons.dart';

class VehiclesScreen extends StatelessWidget {
  const VehiclesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detalles del Vehículo',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.network('https://placekittens.com/500/300'),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingS),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Resúmen',
                      style: GoogleFonts.montserrat(
                        color: AppColors.darkBackground,
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.fontL,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Número de placa',
                          style: GoogleFonts.montserrat(
                            color: AppColors.subtitle,
                            fontSize: AppSizes.fontM,
                          ),
                        ),
                        Text(
                          'ABC-123',
                          style: GoogleFonts.montserrat(
                            color: AppColors.darkBackground,
                            fontSize: AppSizes.fontM,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kilometraje',
                          style: GoogleFonts.montserrat(
                            color: AppColors.subtitle,
                            fontSize: AppSizes.fontM,
                          ),
                        ),
                        Text(
                          '123.000 Km',
                          style: GoogleFonts.montserrat(
                            color: AppColors.darkBackground,
                            fontSize: AppSizes.fontM,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Último mantenimiento',
                          style: GoogleFonts.montserrat(
                            color: AppColors.subtitle,
                            fontSize: AppSizes.fontM,
                          ),
                        ),
                        Text(
                          '21-08-2020',
                          style: GoogleFonts.montserrat(
                            color: AppColors.darkBackground,
                            fontSize: AppSizes.fontM,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Mantenimientos',
                      style: GoogleFonts.montserrat(
                        color: AppColors.darkBackground,
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.fontL,
                      ),
                    ),
                    MaintenanceCard(
                      manintenanceType: 'Aceite',
                      maintenanceDate: '21-09-2023',
                      km: '1.200 Km',
                      onTap: () {},
                    ),
                    MaintenanceCard(
                      manintenanceType: 'Pastillas de frenos',
                      maintenanceDate: '21-09-2023',
                      km: '1.200 Km',
                      onTap: () {},
                    ),
                    MaintenanceCard(
                      manintenanceType: 'Neumáticos',
                      maintenanceDate: '21-09-2023',
                      km: '1.200 Km',
                      onTap: () {},
                    ),
                    MaintenanceCard(
                      manintenanceType: 'Batería',
                      maintenanceDate: '21-09-2023',
                      km: '1.200 Km',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Agregar tarjeta personalizada.
          context.push('/add_maintenance');
        },
        backgroundColor: AppColors.darkBlue,
        child: Icon(UniconsLine.plus, color: AppColors.background),
      ),
    );
  }
}
