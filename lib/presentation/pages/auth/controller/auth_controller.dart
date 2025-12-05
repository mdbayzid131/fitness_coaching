import 'package:get/get.dart';

class AuthController extends GetxController{







  /// <===============================    =============================> ///

  RxBool isPasswordVisible = true.obs;
  RxBool isNewPasswordVisible = true.obs;
  RxBool isConfirmPasswordVisible = true.obs;





/// <===============================Validation =============================> ///
  String? validEmail(String? value) {
    if (!GetUtils.isEmail(value ?? '')) return "Please enter valid email";
    return null;
  }

  String? validUser(String? value) {
    if (value == null || value.isEmpty) return "Please enter your UserName";
    return null;
  }

  String? validPassword(String? value) {
    if (value == null || value.length < 6) {
      return 'Minimum password 6 character';
    }
    return null;
  }

  String? validOtp(String? value) {
    if (value == null || value.length < 6) {
      return 'OTP must be 6 characters';
    }
    return null;
  }


}