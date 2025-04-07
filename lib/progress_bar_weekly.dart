import 'package:flutter/material.dart';

class ProgressBarWeekly extends StatelessWidget {
  final double progressBarStatus;
  // 0 - 272
  
  const ProgressBarWeekly({
    super.key, required this.progressBarStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          height: 35,
          width: 35,
          'assets/img/sidebar/week.png'),
        Stack(
          children: [
    
          
           Container(
            width: 272,
            height: 16,
            decoration: ShapeDecoration(
              color: Color.fromARGB(255, 101, 101, 101),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(34),
            )),
          ),
          Container(
          width: progressBarStatus,
          height: 16,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 100, 39, 243),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(34),
     ),
    ),
                 ),
                ]
               ),
              ],
             );
  }
}
