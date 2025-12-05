import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWidgets{
  static AppBar customAppBar({required String title, Widget? leading, List<Widget>? action}) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            height: 1.4,
            color: Colors.white
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      leading: leading,

      actions: action,
    );
  }

}
