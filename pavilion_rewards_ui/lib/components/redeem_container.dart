import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class RedeemContainer extends StatelessWidget {
  const RedeemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width:327.w,
          height: 67.h,
          margin:  const EdgeInsets.all(24).r,
          padding:  EdgeInsets.only(
            left: 8.w,
            top: 5.h,
            bottom: 8.h,
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
               SizedBox(
                height: 10.h,
              ),
              Container(
                padding:  EdgeInsets.symmetric(
                  vertical: 4.h,
                  horizontal: 33.w,
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
