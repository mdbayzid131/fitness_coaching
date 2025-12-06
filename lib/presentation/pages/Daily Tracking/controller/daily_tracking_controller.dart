import 'package:get/get.dart';

class DailyTrackingController extends GetxController{

  RxDouble sleepSliderValue = 5.0.obs;

  RxDouble energyLevelValue = 5.0.obs;
  RxDouble stressLevelValue = 5.0.obs;
  RxDouble muscelSorenessValue = 5.0.obs;
  RxDouble moodValue = 5.0.obs;
   RxDouble motivationValue = 5.0.obs;

   RxDouble hungerValue = 5.0.obs;
   RxDouble digestionValue = 5.0.obs;


   RxDouble pmsSymptomsValue = 5.0.obs;
   RxDouble crampsValue = 5.0.obs;

  RxBool isSick = true.obs;
  RxBool cardioType= true.obs;



  RxBool placeholder = false.obs;
  RxBool pushFullbody = false.obs;
  RxBool legDayAdvanced = false.obs;
  RxBool trainingPlan1 = false.obs;
  RxString trainingCompleted= "Not Yet selected".obs; // Yes or No
  RxString cardioCompleted= "Not Yet selected".obs; // Yes or No
  RxString cyclePhase= "Not Yet selected".obs; // Follicular or Ovulation or Luteal or Menstruation
  RxString symptoms= "Not Yet selected".obs; // Follicular or Ovulation or Luteal or Menstruation
  RxString dailyDosageTaken= "Not Yet selected".obs; // Follicular or Ovulation or Luteal or Menstruation





}