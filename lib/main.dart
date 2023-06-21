import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:riverpod_demo/core/theme/app_theme_provider.dart';
import 'package:riverpod_demo/core/utils/language/language.dart';
import 'package:riverpod_demo/views/home/view/home_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:riverpod_demo/core/utils/enums/index.dart';
import 'package:riverpod_demo/core/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
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

  /// Hive init process
  await Hive.initFlutter();
  await Hive.openBox(HiveEnums.sessionBox.value);

  runApp(ProviderScope(child: MyApp()));
}

// ignore: must_be_immutable
class MyApp extends ConsumerWidget {
  MyApp({super.key});
  AppTheme appTheme = const AppTheme();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifer = ref.watch(appThemeProvider);
    final language = ref.watch(languageProvider);
    return MaterialApp(
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
      theme: appTheme.themeData(context, themeNotifer.themeIndex),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
