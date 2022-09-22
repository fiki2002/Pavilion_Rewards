import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class RedeemContainer extends StatelessWidget {
  const RedeemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: h * 0.09,
          margin: const EdgeInsets.all(24).r,
          padding: EdgeInsets.only(
            left: 8.w,
            top: 5.h,
            bottom: 8.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: const Color(0xff000000).withOpacity(0.25),
                offset: const Offset(0, 1),
              ),
              const BoxShadow(
                color: AppThemeColor.primaryTextColor,
                offset: Offset(-1, 0),
              ),
              const BoxShadow(
                color: AppThemeColor.primaryTextColor,
                offset: Offset(1, 0),
              )
            ],
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
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 33,
                ),
                decoration: BoxDecoration(
                  color: AppThemeColor.primaryTextColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'Redeem Now!',
                  style: AppThemeStyles.redeemText.copyWith(
                    color: AppThemeColor.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 10.0,
            bottom: 2,
            top: 10,
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/golden_box.png'),
          ),
        ),
      ],
    );
  }
}
