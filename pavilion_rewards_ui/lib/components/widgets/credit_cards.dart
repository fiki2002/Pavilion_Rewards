import 'package:flutter/material.dart';
import 'package:pavilion_rewards_ui/app/app_theme_color.dart';
import 'package:pavilion_rewards_ui/app/app_theme_style.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppThemeColor.primaryColor,
            image: DecorationImage(
              image: AssetImage('assets/images/bg_image.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: Column(
            children: [
              Text(
                'Virtual',
                style: AppThemeStyles.virtualText.copyWith(
                  color: AppThemeColor.primaryTextColor,
                ),
              ),
              Text(
                '1234 5678 9012 3456',
                style: AppThemeStyles.virtualText.copyWith(
                  color: AppThemeColor.primaryTextColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Expiry date',
                    style: AppThemeStyles.cardDetailsTitleText.copyWith(
                      color: AppThemeColor.primaryTextColor,
                    ),
                  ),
                  Text(
                    'cvv',
                    style: AppThemeStyles.cardDetailsTitleText.copyWith(
                      color: AppThemeColor.primaryTextColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '12/34',
                    style: AppThemeStyles.cardDetailsText.copyWith(
                      color: AppThemeColor.primaryTextColor,
                    ),
                  ),
                  Text(
                    '123',
                    style: AppThemeStyles.virtualText.copyWith(
                      color: AppThemeColor.primaryTextColor,
                    ),
                  ),
                ],
              ),
              Text(
                'Janet M Doe',
                style: AppThemeStyles.virtualText.copyWith(
                  color: AppThemeColor.primaryTextColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
