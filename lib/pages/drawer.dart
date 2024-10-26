import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_example/app_routes.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Container()),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Get.toNamed(AppRoutes.home);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text('Advance'),
            onTap: () {
              Get.toNamed(AppRoutes.advanced);
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
