import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SyncProvider with ChangeNotifier {
  Future<void> nextPage(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 1000));
    context.go('/login');
  }
}
