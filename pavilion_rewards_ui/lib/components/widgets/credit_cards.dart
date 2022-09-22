import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 22.h,
            left: 22.w,
          ),
          decoration: BoxDecoration(
            color: AppThemeColor.primaryColor,
            borderRadius: BorderRadius.circular(11).r,
            image: const DecorationImage(
              image: AssetImage('assets/images/bg_image.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'cvv',
                    style: AppThemeStyles.cardDetailsTitleText.copyWith(
                      color: AppThemeColor.primaryTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Text(
                    '12/34',
                    style: AppThemeStyles.cardDetailsText.copyWith(
                      color: AppThemeColor.primaryTextColor,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    '123',
                    style: AppThemeStyles.cardDetailsText.copyWith(
                      color: AppThemeColor.primaryTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7.h,
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
