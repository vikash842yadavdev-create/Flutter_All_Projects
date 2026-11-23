import 'package:e_commerce_app/features/modules/notification_module/presentation/controller/notification_screen_controller.dart';
import 'package:get/get.dart';

class NotificationScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationScreenController>(
      () => NotificationScreenController(),
    );
  }
}
