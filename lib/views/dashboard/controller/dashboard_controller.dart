import 'package:riverpod_demo/views/dashboard/service/i_dashboard_service.dart';
import 'package:riverpod_demo/views/dashboard/service/dashboard_service.dart';
import 'package:riverpod_demo/core/navigation/navigation_service.dart';
import 'package:riverpod_demo/core/utils/enums/index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final dashboardProvider = ChangeNotifierProvider(
  (ref) => DashboardController(),
);

class DashboardController extends ChangeNotifier {
  final nav = NavigationService.init;
  IDashboarService service = DashboardService();

  bool isLoading = false;
  late String? title;

  Future getData() async {
    onChangeLoading();
    var response = await service.fetchData();
    if (response != null) {
      title = response.title;
    }
    onChangeLoading();
    notifyListeners();
  }

  goHomePage(BuildContext context) => nav.go(
        ctx: context,
        path: NavigationEnums.home.toPath,
      );

  onChangeLoading() => isLoading = !isLoading;
}
