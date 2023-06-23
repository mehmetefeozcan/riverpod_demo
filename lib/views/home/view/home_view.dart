import 'package:riverpod_demo/views/home/controller/home_controller.dart';
import 'package:riverpod_demo/core/utils/language/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/core/base/base_view.dart';
import 'package:riverpod_demo/core/theme/index.dart';
import 'package:flutter/material.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeController = ref.watch(homeProvider);
    final themeNotifer = ref.watch(appThemeProvider);
    final language = ref.watch(languageProvider);

    return BaseView(
      onPageBuilder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.changeTheme),
              ElevatedButton(
                onPressed: () {
                  themeNotifer.changeTheme();
                },
                child: Text(AppLocalizations.of(context)!.helloWorld),
              ),
              Text(AppLocalizations.of(context)!.changeLang),
              ElevatedButton(
                onPressed: () {
                  if (language == const Locale('tr')) {
                    ref.read(languageProvider.notifier).en();
                  } else {
                    ref.read(languageProvider.notifier).tr();
                  }
                },
                child: Text(AppLocalizations.of(context)!.lang),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
