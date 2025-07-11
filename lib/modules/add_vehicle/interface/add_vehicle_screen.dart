import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/core/theme/app_colors.dart';
import 'package:rutea_app/core/theme/app_sizes.dart';
import 'package:rutea_app/core/widgets/widgets.dart';
import 'package:rutea_app/modules/add_vehicle/domain/add_vehicle_provider.dart';

class AddVehicleScreen extends StatelessWidget {
  const AddVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final addVehicleProvider = Provider.of<AddVehicleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Agrega vehículo',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingS),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selecciona el tipo de vehículo',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontM,
                  ),
                ),
                ValueListenableBuilder<List<String>>(
                  valueListenable: addVehicleProvider.vehicleTypes,
                  builder: (_, list, __) {
                    return ValueListenableBuilder<String?>(
                      valueListenable: addVehicleProvider.selectedVehicle,
                      builder: (_, selected, __) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.paddingM,
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: Text(
                              'Selecciona un vehículo',
                              style: GoogleFonts.montserrat(),
                            ),
                            value: selected,
                            items:
                                list
                                    .map(
                                      (type) => DropdownMenuItem(
                                        value: type,
                                        child: Text(
                                          type,
                                          style: GoogleFonts.montserrat(),
                                        ),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (value) {
                              if (value != null) {
                                addVehicleProvider.setSelectedVehicle(value);
                              }
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                Text(
                  'Selecciona la marca de vehículo',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontM,
                  ),
                ),
                ValueListenableBuilder<List<String>>(
                  valueListenable: addVehicleProvider.vehicleBrand,
                  builder: (_, list, __) {
                    return ValueListenableBuilder<String?>(
                      valueListenable: addVehicleProvider.selectedVehicleBrand,
                      builder: (_, selected, __) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.paddingM,
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: Text(
                              'Selecciona una marca',
                              style: GoogleFonts.montserrat(),
                            ),
                            value: selected,
                            items:
                                list
                                    .map(
                                      (type) => DropdownMenuItem(
                                        value: type,
                                        child: Text(
                                          type,
                                          style: GoogleFonts.montserrat(),
                                        ),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (value) {
                              if (value != null) {
                                addVehicleProvider.setSelectedVehicleBrand(
                                  value,
                                );
                              }
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                Text(
                  'Selecciona el modelo de vehículo',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontM,
                  ),
                ),
                ValueListenableBuilder<List<String>>(
                  valueListenable: addVehicleProvider.vehicleModel,
                  builder: (_, list, __) {
                    return ValueListenableBuilder<String?>(
                      valueListenable: addVehicleProvider.selectedVehicleModel,
                      builder: (_, selected, __) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.paddingM,
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            hint: Text(
                              'Selecciona una marca',
                              style: GoogleFonts.montserrat(),
                            ),
                            value: selected,
                            items:
                                list
                                    .map(
                                      (type) => DropdownMenuItem(
                                        value: type,
                                        child: Text(
                                          type,
                                          style: GoogleFonts.montserrat(),
                                        ),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (value) {
                              if (value != null) {
                                addVehicleProvider.setSelectedVehicleModel(
                                  value,
                                );
                              }
                            },
                          ),
                        );
                      },
                    );
                  },
                ),

                Text(
                  'Ingresa la placa del vehículo',
                  style: GoogleFonts.montserrat(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontM,
                  ),
                ),
                TextFormFieldInput(
                  hintText: 'Placa',
                  controller: TextEditingController(),
                  inputFormatters: [],
                ),
                Text(
                  'Ingresa el kilometraje del vehículo',
                  style: GoogleFonts.montserrat(
                    color: AppColors.text,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizes.fontM,
                  ),
                ),
                TextFormFieldInput(
                  hintText: 'Km',
                  controller: TextEditingController(),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                SizedBox(height: 10),
                AppButton(
                  title: 'Añadir',
                  onTap: () {
                    // TODO: Añadir vehículos
                    context.go('/home');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
