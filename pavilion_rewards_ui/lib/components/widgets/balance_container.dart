import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer(
      {Key? key, required this.balanceType, required this.url})
      : super(key: key);
  final String url;
  final String balanceType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 155,
      padding: const EdgeInsets.only(
        top: 8.2,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                balanceType,
                style: AppThemeStyles.balanceText.copyWith(
                  color: AppThemeColor.primaryTextColor,
                ),
              ),
              const SizedBox(
                height: 4.09,
              ),
              Row(
                children: [
                  Text(
                    'N 2,342:00',
                    style: AppThemeStyles.amountText.copyWith(
                      color: AppThemeColor.primaryTextColor.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(width: 54),
                  Icon(
                    Icons.visibility_off,
                    color: AppThemeColor.primaryTextColor.withOpacity(0.6),
                    size: 8,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
