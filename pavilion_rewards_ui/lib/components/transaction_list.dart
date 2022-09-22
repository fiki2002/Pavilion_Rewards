import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
          decoration: const BoxDecoration(
            color: AppThemeColor.primaryTextColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transaction History',
                  style: AppThemeStyles.introText.copyWith(color: AppThemeColor.headerTextColor,),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 9, top: 4,),
                          decoration: const BoxDecoration(
                            color: AppThemeColor.primaryTextColor,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    )
                  ),
                ],
              )
            ],
          )
        ),
      ],
    ),);
  }
}