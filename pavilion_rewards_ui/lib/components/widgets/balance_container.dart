import 'package:pavilion_rewards_ui/app/app_theme_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pavilion_rewards_ui/app/app_theme_color.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({Key? key, required this.balanceType, required this.url})
      : super(key: key);
  final String url;
  final String balanceType;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 9,
        right: 8,
        left: 10,
      ),
      decoration: BoxDecoration(
        color: AppThemeColor.primaryColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          SvgPicture.asset(url),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                balanceType,
                style: AppThemeStyles.balanceText.copyWith(
                  color: AppThemeColor.primaryTextColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                 Text(
                'N 2,342:00',
                style: AppThemeStyles.amountText.copyWith(
                  color: AppThemeColor.primaryTextColor.withOpacity(0.6),
                ),
              ),
              SvgPicture.asset('assets/icons/eye.svg',),
              ],
             ),
            ],
          ),
        ],
      ),
    );
  }
}
