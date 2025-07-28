import 'package:flutter/material.dart';
import 'package:imc_calculator/Components/Gender_selectro.dart';
import 'package:imc_calculator/Components/height_selector.dart';
import 'package:imc_calculator/Core/app_styles.dart';
import 'package:imc_calculator/Core/app_color.dart';
import 'package:imc_calculator/Components/number_selector.dart';
import 'package:imc_calculator/Screens/imc_ResultCalculator.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 10;
  int selectedWeight = 50;
  double selectedHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            GenderSelector(),
            HeightSelector(value: selectedHeight,changedHeight:(newValue) {
              setState(() {
                selectedHeight = newValue;
              });
            }, ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: NumberSelector(
                      title: "PESO",
                      value: selectedWeight,
                      oncIncrement: () {
                        setState(() {
                          selectedWeight++;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          selectedWeight--;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 16), 
                  Expanded(
                    child: NumberSelector(
                      title: "EDAD",
                      value: selectedAge,
                      oncIncrement: () {
                        setState(() {
                          selectedAge++;
                        });
                      },
                      onDecrement: () {
                        setState(() {
                          selectedAge--;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> ImcResultcalculator(selectedWeight: selectedWeight,selectedHeight: selectedHeight)));

                  },
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    backgroundColor: WidgetStatePropertyAll(AppColor.primaryColor),
                  ),
                  child: Text(
                    "CALCULAR",
                    style: TextStyles.bodyText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
