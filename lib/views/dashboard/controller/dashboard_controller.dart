import 'package:riverpod_demo/views/dashboard/service/i_dashboard_service.dart';
import 'package:riverpod_demo/views/dashboard/service/dashboard_service.dart';
import 'package:riverpod_demo/core/navigation/navigation_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final dashboardProvider = ChangeNotifierProvider(
  (ref) => DashboardController(),
);

class DashboardController extends ChangeNotifier {
  IDashboarService service = DashboardService();

  final nav = NavigationService.init;
  bool isLoading = false;

  getData() async {
    onChangeLoading();
    var response = await service.fetchData();
    if (response != null) {
      print(response.title!);
    }
    onChangeLoading();
    notifyListeners();
  }

  onChangeLoading() => isLoading = !isLoading;
}
