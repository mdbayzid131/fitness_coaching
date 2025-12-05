import 'package:get/get.dart';

class DailyTrackingController extends GetxController{

  RxDouble sleepSliderValue = 5.0.obs;

  RxDouble energyLevelValue = 5.0.obs;
  RxDouble stressLevelValue = 5.0.obs;
  RxDouble muscelSorenessValue = 5.0.obs;
  RxDouble moodValue = 5.0.obs;
   RxDouble motivationValue = 5.0.obs;
  // RxDouble energyLevelValue = 5.0.obs;

  RxBool isSick = true.obs;
  RxBool cardioType= true.obs;



  RxBool placeholder = false.obs;
  RxBool pushFullbody = false.obs;
  RxBool legDayAdvanced = false.obs;
  RxBool trainingPlan1 = false.obs;
  RxString trainingCompleted= "Not Yet selected".obs; // Yes or No
  RxString cardioCompleted= "Not Yet selected".obs; // Yes or No




}