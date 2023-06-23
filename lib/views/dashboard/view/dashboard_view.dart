import 'package:riverpod_demo/views/dashboard/controller/dashboard_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/core/base/base_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends ConsumerWidget {
  const DashboardView({super.key});

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Response: ${controller.title!}"),
                    ElevatedButton(
                      onPressed: () => controller.goHomePage(context),
                      child: const Text("Go Home View"),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
