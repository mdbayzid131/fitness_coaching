import 'package:fitness_coaching_app/presentation/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_image_and_icon.dart';
import '../../../widgets/custom_elevated_button.dart';

class Tab1 extends StatefulWidget {
  final VoidCallback onNext;
  const Tab1({super.key, required this.onNext});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SvgPicture.asset(AppImageAndIcon.weightIcon),
              SizedBox(width: 10.w),
              Text(
                'Basic Data ',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          CustomContainer(
            height: 74.h,
            width: 392.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppImageAndIcon.toffey),
                SizedBox(width: 10),
                Text(
                  'competition class',
                  style: TextStyle(color: Color(0xffEACECE), fontSize: 16),
                ),
                SizedBox(width: 10),
                Text(
                  'competition class',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CustomContainer(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Current Weight (kg)',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Text(
                      '80.2 (kg)',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2.r),
                      height: 27.h,
                      width: 129.w,
                      decoration: BoxDecoration(
                        color: Color(0xff2f422f),
                        borderRadius: BorderRadius.circular(10.r),

                      ),
                      child: Center(
                        child: Text(
                          '∅ Check-in since last',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4C9A4E),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CustomContainer(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Average Weight in %',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Text(
                      '80.2 (kg)',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2.r),
                      height: 27.h,
                      width: 129.w,
                      decoration: BoxDecoration(
                        color: Color(0xff2f422f),
                        borderRadius: BorderRadius.circular(10.r),

                      ),
                      child: Center(
                        child: Text(
                          '∅ Check-in since last',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4C9A4E),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 110),
          CustomElevatedButton(label: 'Next', onPressed: widget.onNext),
        ],
      ),
    );
  }
}
