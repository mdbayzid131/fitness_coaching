import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CustomDropDown extends StatefulWidget {
  final RxString value;
  final List<String> items;
  final String hintText;

  const CustomDropDown({
    super.key,
    required this.value,
    required this.items,
    required this.hintText,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF182233),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Obx(
        () => DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            dropdownColor: Color(0xFF1F2A3A), // dropdown background dark
            borderRadius: BorderRadius.circular(12),

            value: widget.value.value,

            hint: Text(
              widget.hintText,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),

            icon: Icon(Icons.keyboard_arrow_right, color: Colors.white),
            items: [
              DropdownMenuItem<String>(
                value: "Not Yet selected",
                child: Text(
                  widget.hintText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ...widget.items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(color: Colors.white)),
                );
              }),
            ],

            onChanged: (value) {
              widget.value.value = value!;
            },
          ),
        ),
      ),
    );
  }
}
