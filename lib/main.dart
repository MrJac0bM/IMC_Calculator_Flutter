import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_color.dart';
import 'package:imc_calculator/Screens/imcHome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Imc Calculator"),
          backgroundColor: AppColor.primaryColor,
          foregroundColor: Colors.white,
         actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: IconButton(onPressed: (){print("Presionado");}, icon: Icon(Icons.person)),
            )
         ],

        ),
        backgroundColor: AppColor.backgroundColor,
        body: ImcHomeScreen()
      ),
    );  
  }
}



