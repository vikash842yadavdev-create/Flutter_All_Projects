import 'package:get/instance_manager.dart';
import 'package:playstoreclone/app/modules/games_module/controller/games_screen_controller.dart';

class GamesScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GamesScreenController>(() => GamesScreenController());
  }
}
