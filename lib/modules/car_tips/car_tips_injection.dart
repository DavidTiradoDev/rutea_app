import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/car_tips/domain/car_tips_provider.dart';
import 'package:rutea_app/modules/car_tips/interface/car_tips_screen.dart';

class CarTipsInjection {
  CarTipsInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => CarTipsProvider(),
      child: CarTipsScreen(),
    );
  }
}
