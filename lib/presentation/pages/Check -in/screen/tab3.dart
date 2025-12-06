import 'package:flutter/material.dart';

import '../../../widgets/custom_elevated_button.dart';

class Tab3 extends StatefulWidget {
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  const Tab3({super.key, required this.onPrevious, required this.onNext});

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
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
