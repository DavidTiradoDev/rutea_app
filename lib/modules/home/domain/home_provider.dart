import 'package:flutter/widgets.dart';
import 'package:rutea_app/modules/home/interface/pages/profile_page.dart';
import 'package:rutea_app/modules/home/interface/pages/tips_page.dart';
import 'package:rutea_app/modules/home/interface/pages/vehicles_page.dart';

class HomeProvider with ChangeNotifier {
  final ValueNotifier<int> currentIndex = ValueNotifier<int>(1);
  final List<Widget> pages = const [TipsPage(), VehiclesPage(), ProfilePage()];
}
