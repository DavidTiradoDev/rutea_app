import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/add_maintenance/domain/add_maintenance_provider.dart';
import 'package:rutea_app/modules/add_maintenance/interface/add_maintenance_screen.dart';

class AddMaintenanceInjection {
  AddMaintenanceInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => AddMaintenanceProvider(),
      child: AddMaintenanceScreen(),
    );
  }
}
