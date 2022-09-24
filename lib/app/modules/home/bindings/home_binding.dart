import 'package:get/get.dart';
import 'package:getx_todo_app/app/data/providers/task/provider.dart';
import 'package:getx_todo_app/app/data/services/storage/repository.dart';

import '../controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
