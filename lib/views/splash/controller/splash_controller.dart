import 'package:riverpod_demo/core/navigation/navigation_service.dart';
import 'package:riverpod_demo/core/utils/enums/index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final splashProvider = ChangeNotifierProvider(
  (ref) => SplashController(),
);

class SplashController extends ChangeNotifier {
  final nav = NavigationService.init;

  Future goDashboard(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        nav.go(
          ctx: context,
          path: NavigationEnums.dashboard.toPath,
        );
      },
    );
  }
}
