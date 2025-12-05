import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../../../../routes/routes.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../controller/auth_controller.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();
  final _authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(title: 'Check your email'),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Text(
                "Check your email",
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
                "we send a verification code Please\n Check your e-mail",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Color(0xffF0E9E9),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 24),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    validator: (value) => _authController.validOtp(value),
                    hintText: 'Enter your OTP',
                    label: 'OTP',
                    controller: otpController,
                  ),

                  SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("This code will expire in ",style: TextStyle(color: Color(0xffD5C8C8),fontSize: 14),),Text(" 01:56",style: TextStyle(color: Color(0xffD5C8C8),fontSize: 14),),
                    ],
                  ),
                  SizedBox(height: 16),
                  CustomElevatedButton(
                    label: 'Send',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Get.toNamed(RoutePages.newPassword);
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
