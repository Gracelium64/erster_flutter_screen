import 'package:flutter/material.dart';

class SideBarIcon extends StatelessWidget {
  final String iconImgUrl;
  
  const SideBarIcon({
    super.key, required this.iconImgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(iconImgUrl));
  }
}
