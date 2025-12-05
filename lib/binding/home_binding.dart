import 'package:get/get.dart';
import '../presentation/pages/Daily Tracking/controller/daily_tracking_controller.dart';
import '../presentation/pages/Main_Botom_NabBar/controller/bottom_nab_bar_controller.dart';
import '../presentation/pages/auth/controller/auth_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.put(BottomNabBarController());
    Get.put(DailyTrackingController());
  }
}
