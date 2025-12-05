import 'package:fitness_coaching_app/presentation/widgets/custom_container.dart';
import 'package:fitness_coaching_app/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_image_and_icon.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_slider.dart';
import '../controller/daily_tracking_controller.dart';

class DailyTrackingScreen extends StatefulWidget {
  const DailyTrackingScreen({super.key});

  @override
  State<DailyTrackingScreen> createState() => _DailyTrackingScreenState();
}

class _DailyTrackingScreenState extends State<DailyTrackingScreen> {
  final DailyTrackingController _controller =
      Get.find<DailyTrackingController>();
  final TextEditingController weightCtrl = TextEditingController();
  final TextEditingController sleepCtrl = TextEditingController();
  final TextEditingController bodyTempCtrl = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(
        title: 'Daily Tracking',
        action: [
          CircleAvatar(
            radius: 25.r,
            backgroundColor: Color(0xff12111E),
            foregroundColor: Colors.white,
            child: SvgPicture.asset(
              'assets/icons/calender_icon.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(width: 30.w),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            CustomContainer(
              height: 74.h,
              width: 392.w,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date: ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '18.09.25',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: .center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2.r),
                        height: 27.h,
                        width: 74.w,
                        decoration: BoxDecoration(
                          color: Color(0xff2f422f),
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Color(0xffFFFFFF)),
                        ),
                        child: Text(
                          'Today',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4C9A4E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16.w),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            CustomContainer(
              height: 140,
              width: 392,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.weightIcon),
                      SizedBox(width: 10.w),
                      Text(
                        'Weight ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  CustomTextField(
                    controller: weightCtrl,
                    isLabelVisible: false,
                    hintText: "65.2 (kg)",
                    label: '',
                  ),
                ],
              ),
            ),

            SizedBox(height: 12.h),
            CustomContainer(
              height: 200,
              width: 392,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.sleepIcon),
                      SizedBox(width: 10.w),
                      Text(
                        'Sleep ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  CustomTextField(
                    isLabelVisible: false,
                    hintText: "65.2 (kg)",
                    label: '',
                  ),

                  SizedBox(height: 15),

                  CustomSlider(
                    label: 'Sleep quality(1-10)',
                    value: _controller.sleepSliderValue,
                  ),
                ],
              ),
            ),

            CustomContainer(
              height: 140,
              width: 392,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.sick),
                      SizedBox(width: 10.w),
                      Text(
                        'Sick ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  Obx(
                    () => Column(
                      children: [
                        buildRadioOption(
                          "Yes",
                          true,
                          _controller.isSick.value,
                          (val) {
                            _controller.isSick.value = val;
                          },
                        ),
                        buildRadioOption(
                          "No",
                          false,
                          _controller.isSick.value,
                          (val) {
                            _controller.isSick.value = val;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            CustomContainer(
              height: 150,
              width: 392,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.water),
                      SizedBox(width: 10.w),
                      Text(
                        'Water: ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  CustomTextField(
                    controller: sleepCtrl,
                    isLabelVisible: false,
                    hintText: "1.2 (lit)",
                    label: '',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'At least 2.5 liters recommended.',
                    style: TextStyle(
                      color: Color(0xff43A047),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),

            CustomContainer(
              height: 550,
              width: 392,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.energyAndWellBeing),
                      SizedBox(width: 10.w),
                      Text(
                        'Energy &Well-being ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  CustomSlider(
                    label: "Energy Level(1-10)",
                    value: _controller.energyLevelValue,
                  ),
                  CustomSlider(
                    label: "Stress- Level(1-10)",
                    value: _controller.stressLevelValue,
                  ),
                  CustomSlider(
                    label: "Muscel - Soreness",
                    value: _controller.muscelSorenessValue,
                  ),
                  CustomSlider(
                    label: "Mood(1-10)",
                    value: _controller.moodValue,
                  ),
                  CustomSlider(
                    label: "Motivation(1-10)",
                    value: _controller.motivationValue,
                  ),

                  Text(
                    "Body Temperature",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: bodyTempCtrl,
                    isLabelVisible: false,
                    hintText: "Type..",
                    label: '',
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),

            SizedBox(height: 12.h),

            ///==========================
            CustomContainer(
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.training),
                      SizedBox(width: 10.w),
                      Text(
                        'Training',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF182233),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Obx(
                      () => DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          dropdownColor: Color(
                            0xFF1F2A3A,
                          ), // dropdown background dark
                          borderRadius: BorderRadius.circular(12),

                          value: _controller.trainingCompleted.value,

                          hint: Text(
                            "Training Completed?",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),

                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),

                          items: [
                            DropdownMenuItem(
                              value: "Not Yet selected",
                              child: Text(
                                "Training Completed?",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Yes",
                              child: Text(
                                "Yes",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "No",
                              child: Text(
                                "No",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],

                          onChanged: (value) {
                            _controller.trainingCompleted.value = value!;
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),
                  _buildTitleCard("Training Plan?"),
                  const SizedBox(height: 16),

                  // Checkbox grid
                  Obx(
                    () => Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: .start,
                          children: [
                            _buildCheckBox(
                              "Placeholder",
                              _controller.placeholder.value,
                              (v) {
                                _controller.placeholder.value = v!;
                              },
                            ),
                            _buildCheckBox(
                              "Leg Day Advanced",
                              _controller.legDayAdvanced.value,
                              (v) {
                                _controller.legDayAdvanced.value = v!;
                              },
                            ),
                          ],
                        ),

                        const SizedBox(height: 12),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: .start,
                          children: [
                            _buildCheckBox(
                              "Push Full body",
                              _controller.pushFullbody.value,
                              (v) {
                                _controller.pushFullbody.value = v!;
                              },
                            ),
                            _buildCheckBox(
                              "Training plan 1",
                              _controller.trainingPlan1.value,
                              (v) {
                                _controller.trainingPlan1.value = v!;
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF182233),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Obx(
                      () => DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          dropdownColor: Color(
                            0xFF1F2A3A,
                          ), // dropdown background dark
                          borderRadius: BorderRadius.circular(12),

                          value: _controller.cardioCompleted.value,

                          hint: Text(
                            "Cardio Completed?",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),

                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),

                          items: [
                            DropdownMenuItem(
                              value: "Not Yet selected",
                              child: Text(
                                "Cardio Completed?",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Yes",
                              child: Text(
                                "Yes",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "No",
                              child: Text(
                                "No",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],

                          onChanged: (value) {
                            _controller.cardioCompleted.value = value!;
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),
                  _buildTitleCard("Cardio Type ?"),

                  Obx(
                    () => Column(
                      children: [
                        buildRadioOption(
                          "Yes",
                          true,
                          _controller.cardioType.value,
                          (val) {
                            _controller.cardioType.value = val;
                          },
                        ),
                        buildRadioOption(
                          "No",
                          false,
                          _controller.cardioType.value,
                          (val) {
                            _controller.cardioType.value = val;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRadioOption(
    String label,
    bool value,
    dynamic groupValue,
    Function(dynamic) onChanged,
  ) => Row(
    children: [
      Radio(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        side: BorderSide(width: 1, color: Colors.green),
        activeColor: Colors.green,

        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),

      Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );

  // ---------------- UI Components ---------------- //

  Widget _buildTitleCard(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xFF182233),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildCheckBox(String label, bool value, Function(bool?) onChanged) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.white,
          checkColor: Colors.black,
          side: const BorderSide(color: Colors.white, width: 1.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
