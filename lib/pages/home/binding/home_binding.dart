import 'package:get/get.dart';
import 'package:getx5_example/pages/home/controller/home_controller.dart';

class HomeBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => HomeController()),
    ];
  }
}
