import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_styles.dart';
import 'package:imc_calculator/Core/app_color.dart';

class NumberSelector extends StatefulWidget {
  final String title ;
  final Function() oncIncrement;
  final Function() onDecrement;
  final int value;
  const NumberSelector({super.key,required this.title,required this.oncIncrement,required this.value, required this.onDecrement});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 172,
      decoration: BoxDecoration(
        color: AppColor.backgroundComponentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(widget.title,style: TextStyles.bodyText,),
            Text(widget.value.toString(),style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: FloatingActionButton(heroTag: null,onPressed: (){
                    widget.oncIncrement();
                  },child: Icon(Icons.add,color: Colors.white,),shape: CircleBorder(),backgroundColor: AppColor.primaryColor,),
                ),
                FloatingActionButton(heroTag: null,onPressed: (){
                  widget.onDecrement();
                },child: Icon(Icons.remove,color: Colors.white,),shape: CircleBorder(), backgroundColor: AppColor.primaryColor,)
              ],
            )
          ],
        ),
      ),
    );
  }
}