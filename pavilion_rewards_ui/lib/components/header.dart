import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208.h,
      width: 375.w,
      padding:  EdgeInsets.only(
        left: 24.w,
        right: 24.w,
        top: 27.h,
        bottom: 36.h,
      ),
      decoration:  BoxDecoration(
        color: AppThemeColor.primaryTextColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24.r),
          bottomRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
               CircleAvatar(
                radius: 16.r,
                backgroundImage: const AssetImage('assets/images/janet.png'),
              ),
               SizedBox(
                width: 8.w,
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
              Row(
                children: [
                  buildIcon('assets/icons/search.svg'),
                  buildIcon('assets/icons/help.svg'),
                  buildIcon('assets/icons/notification.svg'),
                ],
              ),
            ],
          ),
         SizedBox(
            height: 38.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              const Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: BalanceContainer(
                  url: 'assets/icons/wallet.svg',
                  balanceType: 'Wallet Balance',
                ),
              ),
              SizedBox(
                width: 18.w,
              ),
              const Flexible(
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
