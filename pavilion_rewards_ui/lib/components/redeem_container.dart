import 'package:flutter/material.dart';
import 'package:pavilion_rewards_ui/app/app_theme_color.dart';

class RedeemContainer extends StatelessWidget {
  const RedeemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.only(
          left: 8,
          top: 5,
          bottom: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient:  const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppThemeColor.gradient1,
              AppThemeColor.gradient2,
            ],
          ),
        ),
        child: Column(
          children: [],
        )
        );
  }
}
