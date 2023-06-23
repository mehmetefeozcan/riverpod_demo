import 'package:riverpod_demo/core/theme/app_theme_provider.dart';
import 'package:riverpod_demo/core/utils/language/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_demo/views/home/viewModel/home_view_model.dart';

// ignore: must_be_immutable
class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifer = ref.watch(appThemeProvider);
    final homeController = ref.watch(homeProvider);
    final language = ref.watch(languageProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${AppLocalizations.of(context)!.title} ${homeController.title}"),
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
                homeController.changeTitle();
              },
              child: Text(AppLocalizations.of(context)!.lang),
            ),
          ],
        ),
      ),
    );
  }
}
