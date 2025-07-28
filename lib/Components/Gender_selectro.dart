import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_color.dart';
import 'package:imc_calculator/Core/app_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;
   

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        children: [
          //Hombre 
          GestureDetector(
            onTap: () => setState(() {
              selectedGender = 'Hombre';
            }),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 170,
              height: 150,
              decoration: BoxDecoration(
                color: selectedGender == 'Hombre' ? AppColor.backgroundComponentSelectedColor : AppColor.backgroundComponentColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/male.png',height: 100,fit: BoxFit.cover,),
                      SizedBox(height: 10),
                      Text("Hombre".toUpperCase(),style: TextStyles.bodyText,)
                  ],
                ),
              ),
            ),
          ),
          //Mujer
          GestureDetector(
            onTap: () => setState(() {
              selectedGender = 'Mujer';
            }),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 170,
              height: 150,
              decoration: BoxDecoration(
                color: selectedGender == 'Mujer' ? AppColor.backgroundComponentSelectedColor : AppColor.backgroundComponentColor,
                borderRadius:BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Column(
                  children: [
                    Image.asset('assets/images/female.png',height: 100, fit: BoxFit.cover,),
                    SizedBox(height: 10),
                    Text("Mujer".toUpperCase(),style:TextStyles.bodyText)
                  ],
                ),
              ),
            ),
          )
        ]
        ,
      ),
    );
  }
}


