import 'package:flutter/material.dart';

class AddVehicleProvider with ChangeNotifier {
  final isLoading = ValueNotifier<bool>(false);

  final ValueNotifier<List<String>> vehicleTypes = ValueNotifier([
    'Automóvil',
    'Motocicleta',
  ]);

  final ValueNotifier<List<String>> vehicleBrand = ValueNotifier([
    'TVS',
    'YAMAHA',
    'HONDA',
    'SYM',
    'KAWA',
  ]);

  final ValueNotifier<List<String>> vehicleModel = ValueNotifier([
    '160',
    '125',
    '500',
    '1230',
    '800',
  ]);

  final ValueNotifier<String?> selectedVehicle = ValueNotifier(null);
  final ValueNotifier<String?> selectedVehicleBrand = ValueNotifier(null);
  final ValueNotifier<String?> selectedVehicleModel = ValueNotifier(null);

  void setSelectedVehicle(String value) {
    selectedVehicle.value = value;
  }

  void setSelectedVehicleBrand(String value) {
    selectedVehicleBrand.value = value;
  }

  void setSelectedVehicleModel(String value) {
    selectedVehicleModel.value = value;
  }
}
