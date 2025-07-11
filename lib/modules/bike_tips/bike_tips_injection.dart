import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/bike_tips/domain/bike_tips_provider.dart';
import 'package:rutea_app/modules/bike_tips/interface/bike_tips_screen.dart';

class BikeTipsInjection {
  BikeTipsInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => BikeTipsProvider(),
      child: BikeTipsScreen(),
    );
  }
}
