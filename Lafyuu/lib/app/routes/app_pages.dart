import 'package:get/get.dart';

import 'package:lafyuu/app/modules/favorite/bindings/favorite_binding.dart';
import 'package:lafyuu/app/modules/favorite/views/favorite_view.dart';
import 'package:lafyuu/app/modules/home/bindings/home_binding.dart';
import 'package:lafyuu/app/modules/home/views/home_view.dart';
import 'package:lafyuu/app/modules/login/bindings/login_binding.dart';
import 'package:lafyuu/app/modules/login/views/login_view.dart';
import 'package:lafyuu/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:lafyuu/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
  ];
}
