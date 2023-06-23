import 'package:riverpod_demo/core/constants/index.dart';
import 'package:riverpod_demo/views/dashboard/view/dashboard_view.dart';
import 'package:riverpod_demo/views/home/view/home_view.dart';
import 'package:riverpod_demo/views/splash/view/home_view.dart';
import 'package:riverpod_demo/core/utils/enums/index.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static GoRouter get router => _router;
  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: AppConstants.envName == 'dev' ? true : false,
    initialLocation: NavigationEnums.splash.toPath,
    routes: [
      normalNavigate(
        path: NavigationEnums.splash.toPath,
        widget: const SplashView(),
      ),
      normalNavigate(
        path: NavigationEnums.dashboard.toPath,
        widget: const DashboardView(),
      ),
      normalNavigate(
        path: NavigationEnums.home.toPath,
        widget: const HomeView(),
      ),
    ],
  );

  static GoRoute normalNavigate(
      {required String path, required Widget widget}) {
    return GoRoute(
      path: path,
      builder: (context, state) => widget,
    );
  }
}
