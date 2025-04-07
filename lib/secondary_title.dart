import 'package:flutter/material.dart';

class SecondaryTitle extends StatelessWidget {
  final String secondaryTitleData;
  
  const SecondaryTitle({
    super.key, required this.secondaryTitleData,
  });

  @override
  Widget build(BuildContext context) {
    return Text(secondaryTitleData,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: const Color(0xFFEEEEEE),
        fontSize: 34,
        fontFamily: 'Marvel',
        fontWeight: FontWeight.w400,
        shadows: [
          Shadow(offset: Offset(1, 1),
          blurRadius: 0,
          color: Color(0xFF111111))],
      ),
    );
  }
}
