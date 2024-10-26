import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_example/app_routes.dart';
import 'package:getx5_example/pages/home/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      route: AppRoutes.home,
      builder: (context) {
        return Scaffold(
          body: GetRouterOutlet(
            initialRoute: AppRoutes.task,
            anchorRoute: AppRoutes.home,
          ),
          bottomNavigationBar: IndexedRouteBuilder(
              routes: const [
                AppRoutes.task,
                AppRoutes.user,
                AppRoutes.advanced,
              ],
              builder: (context, routes, index) {
                final delegate = context.delegate;
                return BottomNavigationBar(
                  currentIndex: index,
                  onTap: (value) => delegate.toNamed(routes[value]),
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_box_rounded),
                      label: 'Task',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_box_rounded),
                      label: 'User',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_box_rounded),
                      label: 'Advance',
                    ),
                  ],
                );
              }),
        );
      },
    );
  }
}
