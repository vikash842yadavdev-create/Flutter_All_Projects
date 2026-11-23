import 'package:get/instance_manager.dart';
import 'package:playstoreclone/app/modules/books_module/controller/books_screen_controller.dart';

class BooksScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BooksScreenController>(() => BooksScreenController());
  }
}
