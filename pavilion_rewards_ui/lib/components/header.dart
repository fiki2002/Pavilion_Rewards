import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.25,
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 27,
        bottom: 36,
      ),
      decoration: BoxDecoration(
        color: AppThemeColor.primaryTextColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
         boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: const Color(0xff000000).withOpacity(0.1),
            offset: const Offset(0, 2),
          ),
          const BoxShadow(
            color: AppThemeColor.primaryTextColor,
            offset: Offset(-2, 0),
          ),
          const BoxShadow(
            color: AppThemeColor.primaryTextColor,
            offset: Offset(2, 0),
          )
        ],
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildIcon('assets/icons/search.svg'),
                  const SizedBox(width: 4),
                  buildIcon('assets/icons/help.svg'),
                  const SizedBox(width: 4),
                  buildIcon('assets/icons/notification.svg'),
                ],
              ),
            ],
          ),
          const Spacer(),
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
    return SvgPicture.asset(url);
  }
}
