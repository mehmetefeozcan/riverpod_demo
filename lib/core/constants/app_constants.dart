import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  const AppConstants._();

  static final String baseUrl = dotenv.env['API_URL'] ?? '';
  static final String envName = dotenv.env['ENV_NAME'] ?? 'dev';

  static final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
}
