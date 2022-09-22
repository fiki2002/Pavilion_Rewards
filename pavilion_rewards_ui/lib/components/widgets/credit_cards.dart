import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 24,
            right: 16,
          ),
          padding: EdgeInsets.only(
            top: 22.h,
            left: 22.w,
          ),
          decoration: BoxDecoration(
            color: AppThemeColor.primaryColor,
            borderRadius: BorderRadius.circular(11).r,
            image: const DecorationImage(
              image: AssetImage('assets/images/bg_image.png'),
              fit: BoxFit.fill,
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
              const SizedBox(
                height: 11,
              ),
              Text(
                '1234 5678 9012 3456',
                style: AppThemeStyles.virtualText.copyWith(
                  color: AppThemeColor.primaryTextColor,
                ),
              ),
              const SizedBox(
                height: 5,
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
                    width: 40.w,
                  ),
                  Text(
                    'CVV',
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
                    width: 48.w,
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
        Padding(
          padding: const EdgeInsets.only(
            right: 40.0,
            top: 85,
            bottom: 15,
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Column(
              children: [
                Image.asset('assets/images/mastercard.png'),
                Text(
                  'mastercard',
                  style: AppThemeStyles.cardTypeText.copyWith(
                    color: AppThemeColor.primaryTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
