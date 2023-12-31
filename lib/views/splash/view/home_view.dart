import 'package:riverpod_demo/views/splash/controller/splash_controller.dart';
import 'package:riverpod_demo/core/utils/extension/context_extension.dart';
import 'package:riverpod_demo/core/base/base_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class SplashView extends ConsumerWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(splashProvider);

    return BaseView(
      onInit: () => controller.goDashboard(context),
      onPageBuilder: (context) => Scaffold(
        body: Center(
          child: Text(
            "Splash View",
            style: context.textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
