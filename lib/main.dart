import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:riverpod_demo/core/utils/language/language.dart';
import 'package:riverpod_demo/core/utils/routes/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/core/theme/index.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  /// [kReleaseMode] load env
  kReleaseMode
      ? await dotenv.load(fileName: ".env")
      : await dotenv.load(fileName: ".env.development");

  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppTheme appTheme = const AppTheme();
    final themeNotifer = ref.watch(appThemeProvider);
    final language = ref.watch(languageProvider);

    /// create an instance of `AppRouter`
    final appRouter = AppRouter();

    return MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('tr'), // Turkish
      ],
      locale: language,
      routerConfig: appRouter.config(),
      theme: appTheme.themeData(context, themeNotifer.themeIndex),
      debugShowCheckedModeBanner: false,
    );
  }
}
