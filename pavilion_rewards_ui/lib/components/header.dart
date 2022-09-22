import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pavilion_rewards_ui/app/app_theme_color.dart';
import 'package:pavilion_rewards_ui/app/app_theme_style.dart';
import 'package:pavilion_rewards_ui/components/widgets/balance_container.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.3,
      width: w,
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 27,
        bottom: 36,
      ),
      decoration: const BoxDecoration(
        color: AppThemeColor.primaryTextColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/janet.png'),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Hi Janet,',
                style: AppThemeStyles.introText.copyWith(
                  color: AppThemeColor.headerTextColor,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              buildIcon('assets/icons/search.svg'),
              buildIcon('assets/icons/help.svg'),
              buildIcon('assets/icons/notification.svg'),
            ],
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: BalanceContainer(
                  url: 'assets/icons/wallet.svg',
                  balanceType: 'Wallet Balance',
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: BalanceContainer(
                  url: 'assets/icons/rewards.svg',
                  balanceType: 'Reward Balance',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIcon(String url) {
    return IconButton(
      onPressed: null,
      icon: SvgPicture.asset(url),
    );
  }
}
