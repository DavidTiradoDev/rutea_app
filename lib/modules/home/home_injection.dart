import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/home/domain/home_provider.dart';
import 'package:rutea_app/modules/home/interface/home_screen.dart';

class HomeInjection {
  HomeInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => HomeProvider(),
      child: HomeScreen(),
    );
  }
}
