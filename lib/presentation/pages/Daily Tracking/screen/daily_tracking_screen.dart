import 'package:fitness_coaching_app/presentation/widgets/custom_container.dart';
import 'package:fitness_coaching_app/presentation/widgets/custom_elevated_button.dart';
import 'package:fitness_coaching_app/presentation/widgets/custom_radio.dart';
import 'package:fitness_coaching_app/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_image_and_icon.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_drop_down.dart';
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
  final TextEditingController activityCtrl = TextEditingController();

  final TextEditingController caloriesCtrl = TextEditingController();
  final TextEditingController carbsCtrl = TextEditingController();
  final TextEditingController proteinCtrl = TextEditingController();
  final TextEditingController fatsCtrl = TextEditingController();
  final TextEditingController cycleDayCtrl = TextEditingController();
  final TextEditingController sideEffectsCtrl = TextEditingController();

  final TextEditingController systolic = TextEditingController();
  final TextEditingController diastolic = TextEditingController();
  final TextEditingController restingHeartRate = TextEditingController();
  final TextEditingController bloodGlucose = TextEditingController();
  final TextEditingController dailyNotes = TextEditingController();

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
                        CustomRadio(
                          label: "Yes",
                          value: true,
                          groupValue: _controller.isSick.value,
                          onChanged: (val) {
                            _controller.isSick.value = val;
                          },
                        ),

                        CustomRadio(
                          label: "No",
                          value: false,
                          groupValue: _controller.isSick.value,
                          onChanged: (val) {
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

                  CustomDropDown(
                    value: _controller.trainingCompleted,
                    items: ['Yes', 'No'],
                    hintText: 'Training Completed?',
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

                  CustomDropDown(
                    value: _controller.cardioCompleted,
                    items: ['Yes', 'No'],
                    hintText: 'Cardio Completed?',
                  ),

                  const SizedBox(height: 8),
                  _buildTitleCard("Cardio Type ?"),
                  const SizedBox(height: 16),

                  Obx(
                    () => Column(
                      children: [
                        CustomRadio(
                          label: "Yes",
                          value: true,
                          groupValue: _controller.cardioType.value,
                          onChanged: (val) {
                            _controller.cardioType.value = val;
                          },
                        ),

                        CustomRadio(
                          label: "No",
                          value: false,
                          groupValue: _controller.cardioType.value,
                          onChanged: (val) {
                            _controller.cardioType.value = val;
                          },
                        ),
                      ],
                    ),
                  ),

                  CustomTextField(hintText: "Duration  (minutes)", label: ""),
                ],
              ),
            ),
            SizedBox(height: 15),
            CustomContainer(
              height: 140,
              width: 392,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.activitySteps),
                      SizedBox(width: 10.w),
                      Text(
                        'Activity Steps ',
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
                    controller: activityCtrl,
                    isLabelVisible: false,
                    hintText: "Type Here...",
                    label: '',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomContainer(
              width: 392,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.nutrition),
                      SizedBox(width: 10.w),
                      Text(
                        'Nutrition',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Calories',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomTextField(
                              controller: caloriesCtrl,
                              isLabelVisible: false,
                              hintText: "Type Here...",
                              label: '',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Carbs',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomTextField(
                              controller: carbsCtrl,
                              isLabelVisible: false,
                              hintText: "Type Here...",
                              label: '',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Protein',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomTextField(
                              controller: proteinCtrl,
                              isLabelVisible: false,
                              hintText: "Type Here...",
                              label: '',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fats',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomTextField(
                              controller: fatsCtrl,
                              isLabelVisible: false,
                              hintText: "Type Here...",
                              label: '',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  CustomSlider(
                    label: 'Hunger(1-10)',
                    value: _controller.hungerValue,
                  ),
                  SizedBox(height: 8),
                  CustomSlider(
                    label: 'Digestion(1-10)',
                    value: _controller.digestionValue,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomContainer(
              width: 392,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.women),
                      SizedBox(width: 10.w),
                      Text(
                        'Women ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  CustomDropDown(
                    value: _controller.cyclePhase,
                    items: [
                      'Follicular',
                      'Ovulation',
                      'Luteal',
                      'Menstruation',
                    ],
                    hintText: 'Cycle Phase?',
                  ),
                  SizedBox(height: 10),

                  CustomTextField(
                    controller: cycleDayCtrl,
                    isLabelVisible: false,
                    hintText: "cycle Day ( Monday)",
                    label: '',
                  ),
                  SizedBox(height: 10),
                  CustomSlider(
                    label: 'PMS Symptoms(1-10) ',
                    value: _controller.pmsSymptomsValue,
                  ),
                  SizedBox(height: 10),
                  CustomSlider(
                    label: 'Cramps(1-10)',
                    value: _controller.crampsValue,
                  ),
                  SizedBox(height: 10),
                  CustomDropDown(
                    value: _controller.symptoms,
                    items: [
                      'Everything fine',
                      'Cramps',
                      'Breast tenderness',
                      'Headache',
                      'Acne',
                      'Lower back pain',
                      'Tiredness',
                      'Cravings',
                      'Sleepless',
                      'Abdominal pain',
                      'Vaginal itching',
                      'Vaginal dryness',
                      'Other',
                    ],
                    hintText: 'Symptoms',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            CustomContainer(
              width: 392,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.women),
                      SizedBox(width: 10.w),
                      Text(
                        'PED ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  CustomDropDown(
                    value: _controller.dailyDosageTaken,
                    items: ['Yes', 'No'],
                    hintText: 'Daily Dosage Taken',
                  ),
                  SizedBox(height: 10),

                  CustomTextField(
                    maxLines: 2,
                    controller: sideEffectsCtrl,
                    isLabelVisible: true,
                    hintText: "Type....",
                    label: 'Side effects Notes',
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(AppImageAndIcon.bloodPressure),
                      SizedBox(width: 10.w),
                      Text(
                        'Blood Pressure(Everybody) ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),

                  Text(
                    'Systolic ',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff),
                    ),
                  ),

                  SizedBox(height: 5),

                  CustomTextField(
                    controller: activityCtrl,
                    isLabelVisible: false,
                    hintText: "120 (mmhg)",
                    label: '',
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Diastolic ',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff),
                    ),
                  ),

                  SizedBox(height: 5),

                  CustomTextField(
                    controller: activityCtrl,
                    isLabelVisible: false,
                    hintText: "80 (mmhg)",
                    label: '',
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Resting heart rate',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff),
                    ),
                  ),

                  SizedBox(height: 5),

                  CustomTextField(
                    controller: activityCtrl,
                    isLabelVisible: false,
                    hintText: "40-60 (BPM)",
                    label: '',
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Blood glucose ',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff),
                    ),
                  ),

                  SizedBox(height: 5),

                  CustomTextField(
                    controller: activityCtrl,
                    isLabelVisible: false,
                    hintText: "Type...",
                    label: '',
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomContainer(
              child: Column(
                children: [
                  CustomTextField(
                    hintText: 'Type...',
                    label: 'Daily Notes',
                    maxLines: 3,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomElevatedButton(label: 'Submit', onPressed: () {}),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }



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
