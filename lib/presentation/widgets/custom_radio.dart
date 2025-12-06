import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final String label;
  final bool value;
  final dynamic groupValue;
  final Function(dynamic) onChanged;

  const CustomRadio({
    super.key,
    required this.label,
    required this.value,
    this.groupValue,
    required this.onChanged,
  });

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: widget.value,
          groupValue: widget.groupValue,
          onChanged: widget.onChanged,
          side: BorderSide(width: 1, color: Colors.green),
          activeColor: Colors.green,

          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),

        Text(
          widget.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
