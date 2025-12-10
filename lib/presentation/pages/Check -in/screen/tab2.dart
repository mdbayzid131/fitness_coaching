import 'package:fitness_coaching_app/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_image_and_icon.dart';

class Tab2 extends StatefulWidget {
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  const Tab2({super.key, required this.onPrevious, required this.onNext});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 63),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImageAndIcon.file),
              SizedBox(width: 10),
              Text(
                'You can select multiple files, but\n at least one file must be chosen ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 115,
            width: 278,
            decoration: BoxDecoration(
              color: Color(0xff416B42),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImageAndIcon.selectImage),
                SizedBox(height: 10),
                Text(
                  'Select file',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImageAndIcon.video),
              SizedBox(width: 10),
              Text(
                'You can select multiple files, but\n at least one file must be chosen ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 115,
            width: 278,
            decoration: BoxDecoration(
              color: Color(0xff416B42),
              borderRadius: BorderRadius.circular(30),
              border: Border.all()
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImageAndIcon.dragAndDrop),
                SizedBox(height: 10),
                Text(
                  'Select file',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  label: 'Back',
                  onPressed: widget.onPrevious,
                ),
              ),
              SizedBox(width: 14),
              Expanded(
                child: CustomElevatedButton(
                  label: 'Next',
                  onPressed: widget.onNext,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
