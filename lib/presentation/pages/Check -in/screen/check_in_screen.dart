import 'package:fitness_coaching_app/presentation/pages/Check%20-in/screen/tab2.dart';
import 'package:fitness_coaching_app/presentation/pages/Check%20-in/screen/tab3.dart';
import 'package:fitness_coaching_app/presentation/pages/Check%20-in/screen/tab4.dart';
import 'package:fitness_coaching_app/presentation/pages/Check%20-in/screen/tab_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_image_and_icon.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({super.key});

  @override
  State<CheckInScreen> createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(() {
      setState(() {});
    });
  }

  void goNext() {
    if (_tabController.index < 3) {
      _tabController.animateTo(_tabController.index + 1);
    }
  }

  void goPrevious() {
    if (_tabController.index > 0) {
      _tabController.animateTo(_tabController.index - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Check In",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        bottom: TabBar(
          splashFactory: NoSplash.splashFactory,
          controller: _tabController,
          indicatorColor: Color(0xff060615),
          dividerColor: Colors.transparent,
          tabs: [
            _buildTab(AppImageAndIcon.profileIcon, "Profile", 0),
            _buildTab(AppImageAndIcon.camera, "Photos", 1),
            _buildTab(AppImageAndIcon.questions, "Questions", 2),
            _buildTab(AppImageAndIcon.checking, "Checking", 3),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Tab1(onNext: goNext, ),
          Tab2(onPrevious: goPrevious, onNext: goNext,),
          Tab3(onPrevious: goPrevious, onNext: goNext,),
          Tab4(onPrevious: goPrevious, onNext: () {  },),


        ],
      ),
    );
  }

  // ---------- Custom Tab ----------
  Widget _buildTab(String path, String text, int index) {
    bool active = _tabController.index == index;

    return Column(
      children: [
        Container(
          height: 3,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: active ? Color(0xff69B427) : Color(0xff2b2b36),
          ),
        ),
        SizedBox(height: 10),
        CircleAvatar(
          radius: 22,
          backgroundColor: active ? Color(0xff69B427) : Color(0xff161623),
          child: SvgPicture.asset(path, color: Colors.white),
        ),
        SizedBox(height: 6),
        Text(text, style: TextStyle(color: Colors.white, fontSize: 15)),
      ],
    );
  }
}
