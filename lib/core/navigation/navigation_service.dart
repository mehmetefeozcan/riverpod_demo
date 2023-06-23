import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class INavigationService {
  push({required BuildContext ctx, required String path});
  go({required BuildContext ctx, required String path});
}

class NavigationService implements INavigationService {
  NavigationService._();

  static final _init = NavigationService._();
  static NavigationService get init => _init;

  @override
  push({required BuildContext ctx, required String path}) {
    ctx.push(path);
  }

  @override
  go({required BuildContext ctx, required String path}) {
    ctx.go(path);
  }
}
