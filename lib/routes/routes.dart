import 'package:get/get.dart';

import '../presentation/pages/Check -in/screen/check_in_screen.dart';
import '../presentation/pages/Daily Tracking/screen/daily_tracking_screen.dart';
import '../presentation/pages/Diet/screen/diet_screen.dart';
import '../presentation/pages/Main_Botom_NabBar/screen/bottom_nab_bar_screen.dart';
import '../presentation/pages/Profile/screen/profile_screen.dart';
import '../presentation/pages/Training/screen/training_screen.dart';
import '../presentation/pages/auth/screen/forget_password.dart';
import '../presentation/pages/auth/screen/login_screen.dart';
import '../presentation/pages/auth/screen/new_password.dart';
import '../presentation/pages/auth/screen/otp_verification_screen.dart';
import '../presentation/pages/auth/screen/password_change_successful.dart';
import '../presentation/pages/splash/splash_screen.dart';

class RoutePages {
  static String splashScreen = '/';
  static String loginScreen = '/loginScreen';
  static String forgetPassword = '/ForgetPassword';
  static String otpVerificationScreen = '/OtpVerificationScreen';
  static String newPassword = '/NewPassword';
  static String passwordChangeSuccessful = '/PasswordChangeSuccessful';


  static String bottomNabBarScreen = '/BottomNabBarScreen';


  static String dailyTrackingScreen = '/DailyTrackingScreen';
  static String checkInScreen = '/CheckInScreen';
  static String trainingScreen = '/TrainingScreen';
  static String dietScreen = '/DietScreen';
  static String profileScreen = '/ProfileScreen';
}

final pages = [
  GetPage(
    name: RoutePages.splashScreen,
    page: () => SplashScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.loginScreen,
    page: () => LoginScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.forgetPassword,
    page: () => ForgetPassword(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.otpVerificationScreen,
    page: () => OtpVerificationScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.newPassword,
    page: () => NewPassword(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.passwordChangeSuccessful,
    page: () => PasswordChangeSuccessful(),
    transition: Transition.noTransition,
  ),



  GetPage(
    name: RoutePages.bottomNabBarScreen,
    page: () => BottomNabBarScreen(),
    transition: Transition.noTransition,
  ),



  GetPage(
    name: RoutePages.dailyTrackingScreen,
    page: () => DailyTrackingScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.checkInScreen,
    page: () => CheckInScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.trainingScreen,
    page: () => TrainingScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.dietScreen,
    page: () => DietScreen(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: RoutePages.profileScreen,
    page: () => ProfileScreen(),
    transition: Transition.noTransition,
  ),


];
