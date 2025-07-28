import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_color.dart';
import 'package:imc_calculator/Core/app_styles.dart';

class ImcResultcalculator extends StatelessWidget {
  final int selectedWeight;
  final double selectedHeight;
  const ImcResultcalculator({super.key, required this.selectedWeight, required this.selectedHeight});

  @override
  Widget build(BuildContext context) {
    double imc = selectedWeight / ((selectedHeight/100) * (selectedHeight/100));
    return  Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: Text("Resultado del IMC "),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            Text("Tu resutado es: ", style: TextStyle(
              fontSize: 38,
              color: Colors.white,
              fontWeight: FontWeight.bold
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top:32 , bottom:  32 , left: 16, right: 16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.backgroundComponentColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (imc < 18.5)
                        Text("Bajo peso", style: TextStyles.bodyText.copyWith(fontSize: 32,color: const Color.fromARGB(255, 63, 80, 241)))
                      else if (imc >= 18.5 && imc < 24.9)
                        Text("Peso normal", style: TextStyles.bodyText.copyWith(fontSize: 32 ,color: const Color.fromARGB(255, 63, 241, 87)))
                      else if (imc >= 25 && imc < 29.9)
                        Text("Sobrepeso", style: TextStyles.bodyText.copyWith(fontSize: 32, color: const Color.fromARGB(255, 219, 120, 5)))
                      else
                        Text("Obesidad", style: TextStyles.bodyText.copyWith(fontSize: 32, color: const Color.fromARGB(255, 163, 28, 19))),
                      Text(imc.toStringAsFixed(2), style: TextStyles.bodyText.copyWith(fontSize: 64)),

                       if (imc < 18.5)
                        Text("Necesitas incrementar de peso chabalon", style: TextStyles.bodyText, textAlign: TextAlign.center)
                      else if (imc >= 18.5 && imc < 24.9)
                        Text("Estas perfecto mi rey ", style: TextStyles.bodyText, textAlign: TextAlign.center)
                      else if (imc >= 25 && imc < 29.9)
                        Text("Bajale un poco a esas hamburguesas", style: TextStyles.bodyText, textAlign: TextAlign.center)
                      else
                        Text("Na tu si comes bien ve un poco al gym porfa", style: TextStyles.bodyText, textAlign: TextAlign.center),


                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16 ,bottom: 16),
              child: Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text("Finalizar",style: TextStyles.bodyText,),style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                        backgroundColor: WidgetStatePropertyAll(AppColor.primaryColor),
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}