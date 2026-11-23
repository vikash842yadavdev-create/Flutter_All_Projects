import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/views/api_services.dart';

class HomescreenController extends GetxController {
  final ApiServices apiServices = ApiServices();

  @override
  void onInit() {
    super.onInit();
    getProfileData();
  }

  List<dynamic> getdata = [];

  Future<void> getProfileData() async {
    try {
      final response = await apiServices.profileData();
      if (response.statusCode == 200) {
        getdata = response.data;
      }
    } catch (e) {
      print('Error in Profile $e');
    }
    update();
  }
}
