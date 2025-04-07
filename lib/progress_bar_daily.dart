import 'package:flutter/material.dart';

class ProgressBarDaily extends StatelessWidget {
  final double progressBarStatus;
  // 0 - 272
  
  const ProgressBarDaily({
    super.key, required this.progressBarStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          height: 35,
          width: 35,
          'assets/img/sidebar/daily.png'),
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
            color: Color.fromARGB(255, 131, 206, 71),
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
