import 'package:get/get.dart';
import 'package:getx5_example/pages/advance/controller/advance_controller.dart';

class AdvanceBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => AdvanceController()),
    ];
  }
}
