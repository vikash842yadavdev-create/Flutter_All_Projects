import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/state_manager.dart';

class HomeScreenController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> logout() async {
    await _auth.signOut();
  }
}
