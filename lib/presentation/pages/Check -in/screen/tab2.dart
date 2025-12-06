import 'package:fitness_coaching_app/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

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
