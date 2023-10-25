import 'package:get/get.dart';
import 'package:newspappers/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  
  @override
  void onInit() {

    // navigate to home page after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.HOME);
    });

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
