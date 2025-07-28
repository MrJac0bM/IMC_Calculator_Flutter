import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_color.dart';
import 'package:imc_calculator/Core/app_styles.dart';

class HeightSelector extends StatefulWidget {
  final double value;
  final Function(double) changedHeight;

  const HeightSelector({
    super.key,
    required this.value,
    required this.changedHeight,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.backgroundComponentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Text("ALTURA", style: TextStyles.bodyText),
            Text(
              "${widget.value.toStringAsFixed(0)} cm",
              style: const TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Slider(
              value: widget.value,
              min: 120,
              max: 220,
              divisions: 100,
              label: widget.value.toStringAsFixed(0),
              activeColor: AppColor.primaryColor,
              onChanged: (value) {
                widget.changedHeight(value); 
              },
            ),
          ],
        ),
      ),
    );
  }
}
