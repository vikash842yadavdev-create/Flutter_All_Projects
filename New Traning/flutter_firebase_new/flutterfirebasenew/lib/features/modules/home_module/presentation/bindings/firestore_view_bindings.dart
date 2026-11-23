import 'package:flutterfirebasenew/features/modules/home_module/presentation/controller/firestore_view_controller.dart';
import 'package:get/instance_manager.dart';

class FirestoreViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirestoreViewController>(() => FirestoreViewController());
  }
}
