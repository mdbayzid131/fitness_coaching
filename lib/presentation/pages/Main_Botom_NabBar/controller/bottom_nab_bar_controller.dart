import 'package:get/get.dart';

import '../../Check -in/screen/check_in_screen.dart';
import '../../Daily Tracking/screen/daily_tracking_screen.dart';
import '../../Diet/screen/diet_screen.dart';
import '../../Profile/screen/profile_screen.dart';
import '../../Training/screen/training_screen.dart';


class BottomNabBarController extends GetxController{
  /// <=========== Bottom Navigation Bar ===============>///

  RxInt currentIndex = 0.obs;


  RxList pages = [
    DailyTrackingScreen(),
    CheckInScreen(),
    TrainingScreen(),
    DietScreen(),
    ProfileScreen(),

  ].obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}