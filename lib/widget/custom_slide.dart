import 'package:flutter/material.dart';

class ProgressIndicatorBar extends StatelessWidget {
  final int currentStep;
  const ProgressIndicatorBar({super.key, required this.currentStep});

  Widget _customLine(bool isActive) {
    return Container(
      height: 4,
      width: 50,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromARGB(255, 38, 153, 247)
            : const Color.fromARGB(255, 184, 209, 250),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        _customLine(currentStep == 0),
        const SizedBox(width: 5),
        _customLine(currentStep == 1),
        const SizedBox(width: 5),
        _customLine(currentStep >= 2),
        const Spacer(),
      ],
    );
  }
}
