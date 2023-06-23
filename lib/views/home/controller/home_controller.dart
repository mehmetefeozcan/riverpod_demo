import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProvider = ChangeNotifierProvider(
  (ref) => HomeController(),
);

class HomeController extends ChangeNotifier {}
