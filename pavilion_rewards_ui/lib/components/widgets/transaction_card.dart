import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class TransactionCard extends StatelessWidget {
  TransactionCard({
    Key? key,
    required this.url,
    required this.points,
    required this.title,
    required this.date,
    required this.time,
    this.isSuccess = false,
  }) : super(key: key);
  final String url;
  final String title;
  final String date;
  final String time;
  final String points;
  bool isSuccess;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSuccess
                      ? AppThemeColor.transSuccessBGColor
                      : AppThemeColor.transFailureBGColor,
                ),
                child: SvgPicture.asset(url),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: AppThemeStyles.listText.copyWith(
                  color: AppThemeColor.headerTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 18,
          ),
          Text(
            date,
            style: AppThemeStyles.dateTimeText.copyWith(
              color: AppThemeColor.dateTimeColor.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            width: 18,
          ),
          Text(
            time,
            style: AppThemeStyles.dateTimeText.copyWith(
              color: AppThemeColor.dateTimeColor.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            width: 18,
          ),
          Text(
            points,
            style: AppThemeStyles.listText.copyWith(
              color: isSuccess
                  ? AppThemeColor.transFailureTextColor
                  : AppThemeColor.transSuccessTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
