import 'package:erster_flutter_screen/progress_bar_weekly.dart';
import 'package:erster_flutter_screen/progress_bar_daily.dart';
import 'package:erster_flutter_screen/secondary_title.dart';
import 'package:erster_flutter_screen/side_bar_icon.dart';
import 'package:flutter/material.dart';

// fontfamily ?

// problematic plugin removed from project

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                fit: BoxFit.fill,
                'assets/img/app_bg/png/app_bg_pink.png'
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 44, 0, 0),
              child: Column(
                children: [
                  Text('Attention Deficit oH Dear',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFEEEEEE),
                    fontSize: 30,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w400,
                    shadows: [
                      Shadow(offset: Offset(1, 1),
                      blurRadius: 0,
                      color: Color(0xFF111111))],
                   ),
                  ),
                  SecondaryTitle(secondaryTitleData: 'Fidget Screen'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 76, 12, 12),
              child: SizedBox(
                height: 674,
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                          height: 50,
                          width: 50,
                        'assets/img/sidebar/oi.png'),
                    ),
                    SideBarIcon(iconImgUrl: 'assets/img/sidebar/daily.png'),
                    SideBarIcon(iconImgUrl: 'assets/img/sidebar/week.png'),
                    SideBarIcon(iconImgUrl: 'assets/img/sidebar/clock.png'),
                    SideBarIcon(iconImgUrl: 'assets/img/sidebar/star.png'),
                    SideBarIcon(iconImgUrl: 'assets/img/sidebar/fridge.png'),
                    SideBarIcon(iconImgUrl: 'assets/img/sidebar/fidget.png'),
                    SideBarIcon(iconImgUrl: 'assets/img/sidebar/prize.png'),
                    SideBarIcon(iconImgUrl: 'assets/img/sidebar/hamburger.png'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(76, 100, 0, 0),
              child: ProgressBarDaily(progressBarStatus: 170),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(76, 124, 0, 0),
              child: ProgressBarWeekly(progressBarStatus: 200),
            ),
            Padding(padding: EdgeInsets.fromLTRB(76, 192, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('No fidget here.',
                  textAlign: TextAlign.center,
                  style: TextStyle( 
                    color: Color.fromARGB(255, 250, 250, 250),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400
                  ),
                  ),
                  SizedBox(height: 12),
                  Text('Get back to work!',
                  textAlign: TextAlign.center,
                  style: TextStyle( 
                    color: Color.fromARGB(255, 250, 250, 250),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400
                  ),
                  ),
                  ],
              
              ),
              ),
         Padding(padding: const EdgeInsets.fromLTRB(76, 0, 0, 48),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Container(
                  
                  width: 52,
                  height: 52,
                  decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 87, 86, 86),
                    shape: OvalBorder()
                    ),
                
                         ),
                        ],
                       ),
              )
      ),
     ],
    ),
   ),
  );
 }
}