import 'package:riverpod_demo/core/theme/app_theme_provider.dart';
import 'package:riverpod_demo/core/utils/language/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifer = ref.watch(appThemeProvider);
    final language = ref.watch(languageProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Current theme: "),
            ElevatedButton(
              onPressed: () {
                themeNotifer.changeTheme();
              },
              child: Text(AppLocalizations.of(context)!.helloWorld.toString()),
            ),
            ElevatedButton(
              onPressed: () {
                if (language == const Locale('tr')) {
                  ref.read(languageProvider.notifier).en();
                } else {
                  ref.read(languageProvider.notifier).tr();
                }
              },
              child: Text(AppLocalizations.of(context)!.lang.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
