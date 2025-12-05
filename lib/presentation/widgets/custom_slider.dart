import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSlider extends StatefulWidget {
  final String label;
  final RxDouble value;

  const CustomSlider(
      {super.key, required this.label, required this.value});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffffffff),
              ),
            ),
            Spacer(),
            Obx(()=>
                Container(
                  height: 20,
                  width: 26,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff69B427)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "${widget.value.value.toInt()}",
                      style: TextStyle(
                        color: Color(0xff69B427),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Obx(()=>Slider(
          value: widget.value.value,
          onChanged: (value) {
            widget.value.value = value;
          },
          min: 0,
          max: 10,
          activeColor: Color(0xff69B427),
        ),),
      ],
    );
  }
}
