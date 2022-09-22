import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class RedeemContainer extends StatelessWidget {
  const RedeemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: w,
          height: h * 0.1,
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.only(
            left: 8,
            top: 5,
            bottom: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppThemeColor.gradient1,
                AppThemeColor.gradient2,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Congratulations!!',
                style: AppThemeStyles.congratsText.copyWith(
                  color: AppThemeColor.primaryTextColor,
                ),
              ),
              RichText(
                text: TextSpan(
                  text:
                      'You\'ve completed all your tasks for the week and you won ',
                  style: AppThemeStyles.messageText.copyWith(
                    color: AppThemeColor.primaryTextColor,
                  ),
                  children: [
                    TextSpan(
                      text: '150 points',
                      style: AppThemeStyles.messageText.copyWith(
                        color: AppThemeColor.minorTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 33,
                ),
                decoration: const BoxDecoration(
                  color: AppThemeColor.primaryTextColor,
                ),
                child:  Text(
                  'Redeem Now!',
                  style: AppThemeStyles.redeemText.copyWith(color: AppThemeColor.primaryColor,)
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
