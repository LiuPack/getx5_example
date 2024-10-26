import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_example/app_routes.dart';
import 'package:getx5_example/pages/drawer.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: RouterListener(builder: (context) {
          return Text(context.location);
        }),
      ),
      body: GetRouterOutlet(
        initialRoute: AppRoutes.home,
        anchorRoute: '/',
      ),
    );
  }
}
