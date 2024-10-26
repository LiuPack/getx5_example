import 'package:get/get.dart';
import 'package:getx5_example/app_routes.dart';
import 'package:getx5_example/pages/advance/binding/advance_binding.dart';
import 'package:getx5_example/pages/advance/page/advance_page.dart';
import 'package:getx5_example/pages/home/binding/home_binding.dart';
import 'package:getx5_example/pages/home/page/home_page.dart';
import 'package:getx5_example/pages/root.dart';
import 'package:getx5_example/pages/task/binding/task_binding.dart';
import 'package:getx5_example/pages/task/page/task_page.dart';
import 'package:getx5_example/pages/user/binding/user_binding.dart';
import 'package:getx5_example/pages/user/page/user_page.dart';

class AppPage {
  AppPage._();

  static final routes = [
    GetPage(
      name: '/',
      page: () => const RootPage(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          preventDuplicates: true,
          name: AppRoutes.home,
          page: () => const HomePage(),
          bindings: [HomeBinding()],
          children: [
            GetPage(
              name: AppRoutes.task,
              page: () => const TaskPage(),
              bindings: [TaskBinding()],
              transition: Transition.size,
            ),
            GetPage(
              name: AppRoutes.user,
              page: () => const UserPage(),
              bindings: [UserBinding()],
              transition: Transition.size,
            ),
            GetPage(
              name: AppRoutes.advanced,
              page: () => const AdvancePage(),
              bindings: [AdvanceBinding()],
            )
          ],
        ),
      ],
    ),
  ];
}
