import 'package:fitness_coaching_app/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../routes/routes.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_text_field.dart';
import '../controller/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(title: 'Log in'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 100),
            Center(
              child: Text(
                "Victory Belongs to the Lions",
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
                "Log in to continue your journey together.",
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
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff909090),
                      size: 18,
                    ),
                    hintText: 'Enter your email',
                    label: 'Email',
                    controller: emailController,
                  ),
                  SizedBox(height: 16),
                  Obx(
                    () => CustomTextField(
                      validator: _authController.validPassword,
                      obscureText: _authController.isPasswordVisible.value,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff909090),
                        size: 18,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _authController.isPasswordVisible.value =
                              !_authController.isPasswordVisible.value;
                        },
                        icon: Icon(
                          _authController.isPasswordVisible.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color(0xff909090),
                          size: 18,
                        ),
                      ),

                      hintText: 'Enter your password',
                      label: 'Password',
                      controller: passwordController,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RoutePages.forgetPassword);
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: Size(0, 0),
                        ),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            color: Color(0xff8080EE),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24),

                  CustomElevatedButton(
                    label: 'Log in',
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   Get.offAllNamed(RoutePages.bottomNabBarScreen);
                      // }
                      Get.offAllNamed(RoutePages.bottomNabBarScreen);
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
