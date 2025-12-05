import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../routes/routes.dart';
import '../../../widgets/custom_elevated_button.dart';

class PasswordChangeSuccessful extends StatefulWidget {
  const PasswordChangeSuccessful({super.key});

  @override
  State<PasswordChangeSuccessful> createState() =>
      _PasswordChangeSuccessfulState();
}

class _PasswordChangeSuccessfulState extends State<PasswordChangeSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 53),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 273),
            Center(
              child: SvgPicture.asset(
                'assets/images/password_change_successful_image.svg',
              ),
            ),
            SizedBox(height: 24),
            Text(
              textAlign: TextAlign.center,
              'your password has been \n changed successfully',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                height: 1.5,
                color: Color(0xff9C9C9C),
              ),
            ),
            SizedBox(height: 32),
            CustomElevatedButton(label: 'Back to home',onPressed: () => Get.toNamed(RoutePages.bottomNabBarScreen)),

          ],
        ),
      ),
    );
  }
}
