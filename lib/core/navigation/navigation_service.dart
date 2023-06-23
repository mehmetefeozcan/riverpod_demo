import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract class INavigationService {
  push({required BuildContext ctx, required PageRouteInfo page});
  replace({required BuildContext ctx, required PageRouteInfo page});
}

class NavigationService implements INavigationService {
  NavigationService._();

  static final _init = NavigationService._();
  static NavigationService get init => _init;

  @override
  push({required BuildContext ctx, required PageRouteInfo page}) {
    ctx.router.push(page);
  }

  @override
  replace({required BuildContext ctx, required PageRouteInfo page}) {
    ctx.router.replace(page);
  }
}
