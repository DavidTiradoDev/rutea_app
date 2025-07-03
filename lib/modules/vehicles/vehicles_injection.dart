import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/vehicles/domain/vehicles_provider.dart';
import 'package:rutea_app/modules/vehicles/interface/vehicles_screen.dart';

class VehiclesInjection {
  VehiclesInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => VehiclesProvider(),
      child: VehiclesScreen(),
    );
  }
}
