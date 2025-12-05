import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatefulWidget {
  final Widget child;
  final double? height;
  final double ?width;
  const CustomContainer({super.key, required this.child, this.height, this.width, });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.r, horizontal: 13.r),
      height: widget.height,
      width: widget.width,

      decoration: BoxDecoration(
        color: Color(0xff101021),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: widget.child,
    );
  }
}
