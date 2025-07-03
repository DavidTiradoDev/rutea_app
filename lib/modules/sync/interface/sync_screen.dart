import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/sync/domain/sync_provider.dart';

class SyncScreen extends StatelessWidget {
  const SyncScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*  
     El syncProvider inicializa el provider en esta
     pantalla lo que permite usar metodos desde el domain
    */

    // ignore: unused_local_variable
    final syncProvider = Provider.of<SyncProvider>(context);
    return Scaffold(body: Center(child: Text('Sync Screen')));
  }
}
