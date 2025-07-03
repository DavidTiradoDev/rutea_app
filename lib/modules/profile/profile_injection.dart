import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/profile/domain/profile_provider.dart';
import 'package:rutea_app/modules/profile/interface/profile_screen.dart';

class ProfileInjection {
  ProfileInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => ProfileProvider(),
      child: ProfileScreen(),
    );
  }
}
