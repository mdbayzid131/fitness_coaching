import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../routes/routes.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../controller/auth_controller.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final _authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(title: 'Create New Password'),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Text(
                "Create New Password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Your new password must be different\n from previous passwords.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Color(0xffF0E9E9),
                ),
              ),
            ),
            SizedBox(height: 24),
            Obx(()=>Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      obscureText: _authController.isNewPasswordVisible.value,
                      suffixIcon: IconButton(
                          onPressed: () {
                            _authController.isNewPasswordVisible.value =
                            !_authController.isNewPasswordVisible.value;
                          },
                          icon: Icon(
                            _authController.isNewPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xff909090),
                            size: 18,
                          ),
                        ),

                      hintText: 'Enter New Password',
                      label: 'New Password',
                      controller: passwordController,
                    ),
                    CustomTextField(
                      validator: _authController.validPassword,
                      obscureText: _authController.isConfirmPasswordVisible.value,
                      suffixIcon: IconButton(
                          onPressed: () {
                            _authController.isConfirmPasswordVisible.value =
                            !_authController.isConfirmPasswordVisible.value;
                          },
                          icon: Icon(
                            _authController.isConfirmPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xff909090),
                            size: 18,
                          ),
                        ),

                      hintText: 'Enter confirm Password',
                      label: 'Confirm Password',
                      controller: confirmPasswordController,
                    ),

                    SizedBox(height: 32),

                    CustomElevatedButton(
                      label: 'Send',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Get.toNamed(RoutePages.passwordChangeSuccessful);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
