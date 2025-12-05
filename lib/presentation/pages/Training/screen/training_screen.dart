import 'package:flutter/material.dart';

import '../../../widgets/custom_appbar.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets.customAppBar(title: 'Training'),
    );
  }
}
