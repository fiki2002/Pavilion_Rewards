import 'package:flutter/material.dart';
import 'package:pavilion_rewards_ui/app/app_theme_color.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top:27, bottom: 36,),
      decoration: const BoxDecoration(
        color: AppThemeColor.primaryTextColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ) ,
      child: Column(
        children:  [
            Row(
              children: [],
            ),
        ],
      ),
    );
  }
}