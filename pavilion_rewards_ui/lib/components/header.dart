import 'package:pavilion_rewards_ui/exports/file_exports.dart';

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
      height: 208.h,
      width: 375.w,
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
              Row(
                children: [
                  buildIcon('assets/icons/search.svg'),
                  buildIcon('assets/icons/help.svg'),
                  buildIcon('assets/icons/notification.svg'),
                ],
              ),
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
              SizedBox(
                width: 18,
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
