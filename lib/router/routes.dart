import 'package:get/get.dart';
import 'package:test_exercise/router/route_pathes.dart';
import 'package:test_exercise/src/ui/main_page/main_page.dart';
import 'package:test_exercise/src/ui/unknown/unknown_page.dart';

final routes = [
  GetPage(
    name: AppRouter.mainPage,
    page: () => const MainPage(),
  ),
];

final unknownRoute = GetPage(
  name: AppRouter.unknown,
  page: () => const UnknownPage(),
);

 const String rootRoute = AppRouter.mainPage;