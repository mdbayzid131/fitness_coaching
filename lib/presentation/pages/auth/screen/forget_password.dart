import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../routes/routes.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../controller/auth_controller.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final _authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(title: 'Forgot Password'),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Text(
                "Forgot Password",
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
                "Enter the email or phone your account and\n we’ll send a code to reset your password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Color(0xffF0E9E9),
                ),
              ),
            ),
            SizedBox(height: 24),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    validator: _authController.validEmail,
                    prefixIcon: Icon(Icons.email, color: Color(0xff909090), size: 18),
                    hintText: 'Enter your email',
                    label: 'Email',
                    controller: emailController,
                  ),

                  SizedBox(height: 32),

                  CustomElevatedButton(
                    label: 'Send',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Get.toNamed(RoutePages.otpVerificationScreen);
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
