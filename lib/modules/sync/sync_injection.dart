import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/sync/domain/sync_provider.dart';
import 'package:rutea_app/modules/sync/interface/sync_screen.dart';

class SyncInjection {
  SyncInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => SyncProvider()..nextPage(context),
      child: SyncScreen(),
    );
  }
}
