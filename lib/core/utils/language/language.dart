import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MultiLang extends StateNotifier<Locale> {
  MultiLang() : super(const Locale.fromSubtags(languageCode: 'en'));

  void en() => state = const Locale.fromSubtags(languageCode: 'en');
  void tr() => state = const Locale.fromSubtags(languageCode: 'tr');
}

final languageProvider = StateNotifierProvider<MultiLang, Locale>(
  (ref) => MultiLang(),
);
