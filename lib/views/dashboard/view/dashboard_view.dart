import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_demo/core/base/base_view.dart';
import 'package:riverpod_demo/views/dashboard/controller/dashboard_controller.dart';

@RoutePage()
class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(dashboardProvider);

    return BaseView(
      onInit: () {
        controller.getData();
      },
      onPageBuilder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard View"),
          automaticallyImplyLeading: false,
        ),
        body: controller.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Go Home View"),
                ),
              ),
      ),
    );
  }
}
