import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/bottom_nab_bar_controller.dart';

class BottomNabBarScreen extends StatefulWidget {
  const BottomNabBarScreen({super.key});

  @override
  State<BottomNabBarScreen> createState() => _BottomNabBarScreenState();
}

class _BottomNabBarScreenState extends State<BottomNabBarScreen> {
  final BottomNabBarController _controller = Get.find<BottomNabBarController>();

  List<IconData> icons = [
    Icons.checklist,
    Icons.list_alt_rounded,
    Icons.assignment,
    Icons.restaurant_menu,
    Icons.person,
  ];

  List<String> labels = ["Daily", "Tasks", "Reports", "Meals", "Profile"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _controller.pages[_controller.currentIndex.value]),

      bottomNavigationBar: Obx(
        () => Padding(
          padding:  EdgeInsets.only(bottom: 10.r, left: 5.r, right: 5.r),
          child: Container(
            padding:  EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
            decoration: BoxDecoration(
              color: Color(0xff8E8E8E),
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(icons.length, (index) {
                bool isSelected = _controller.currentIndex.value == index;

                return GestureDetector(
                  onTap: () {
                      _controller.currentIndex.value = index;

                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: EdgeInsets.symmetric(
                      vertical: 18.r,
                      horizontal: isSelected ? 21.r : 18.r,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.black87 : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          icons[index],
                          color: isSelected
                              ? Colors.white
                              : Colors.grey.shade800,
                          size: MediaQuery.of(context).size.width * 0.05,
                        ),
                        if (isSelected)
                          Padding(
                            padding:  EdgeInsets.only(left: 8.r),
                            child: Text(
                              labels[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
