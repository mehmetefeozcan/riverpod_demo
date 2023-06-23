import 'package:riverpod_demo/views/dashboard/view/dashboard_view.dart';
import 'package:riverpod_demo/views/splash/view/home_view.dart';
import 'package:riverpod_demo/views/home/view/home_view.dart';
import 'package:auto_route/auto_route.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: DashboardRoute.page,
          path: '/dashboard',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
        ),
      ];
}
