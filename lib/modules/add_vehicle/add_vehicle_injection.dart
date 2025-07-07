import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/add_vehicle/domain/add_vehicle_provider.dart';
import 'package:rutea_app/modules/add_vehicle/interface/add_vehicle_screen.dart';

class AddVehicleInjection {
  AddVehicleInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => AddVehicleProvider(),
      child: AddVehicleScreen(),
    );
  }
}
