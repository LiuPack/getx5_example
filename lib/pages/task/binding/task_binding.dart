import 'package:get/get.dart';
import 'package:getx5_example/pages/task/controller/task_controller.dart';

class TaskBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => TaskController()),
    ];
  }
}
