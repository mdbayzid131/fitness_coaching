import 'package:flutter/material.dart';

import '../../../widgets/custom_elevated_button.dart';

class Tab4 extends StatefulWidget {
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  const Tab4({super.key, required this.onPrevious, required this.onNext});

  @override
  State<Tab4> createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
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
