import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/tips/domain/tips_provider.dart';
import 'package:rutea_app/modules/tips/interface/tips_screen.dart';

class TipsInjection {
  TipsInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => TipsProvider(),
      child: TipsScreen(),
    );
  }
}
