import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: h * 0.70,
          margin: const EdgeInsets.all(24).r,
          padding: EdgeInsets.only(top: 8.h, left: 8.w, right: 8.w),
          decoration: BoxDecoration(
            color: AppThemeColor.primaryTextColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction History',
                    style: AppThemeStyles.introText.copyWith(
                      color: AppThemeColor.headerTextColor,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 9,
                      top: 4,
                      right: 9,
                      bottom: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppThemeColor.primaryTextColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: const Color(0xff000000).withOpacity(0.3),
                          offset: const Offset(0, 2),
                        ),
                        const BoxShadow(
                          color: AppThemeColor.primaryTextColor,
                          offset: Offset(-2, 0),
                        ),
                        const BoxShadow(
                          color: AppThemeColor.primaryTextColor,
                          offset: Offset(2, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          'This Month',
                          style: AppThemeStyles.dropDownText.copyWith(
                            color: AppThemeColor.headerTextColor,
                          ),
                        ),
                        const SizedBox(width: 3),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(6.19),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      color: const Color(0xff000000).withOpacity(0.2),
                      offset: const Offset(0, 1),
                    ),
                    const BoxShadow(
                      color: AppThemeColor.primaryTextColor,
                      offset: Offset(-1, 0),
                    ),
                    const BoxShadow(
                      color: AppThemeColor.primaryTextColor,
                      offset: Offset(1, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    buildText('Name'),
                    const SizedBox(
                      width: 90,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildText('Date'),
                          const SizedBox(
                            width: 20,
                          ),
                          buildText('Time'),
                          const SizedBox(
                            width: 10,
                          ),
                          buildText('Points'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return TransactionCard(
                        url: transHistory[index].url,
                        points: transHistory[index].points,
                        title: transHistory[index].title,
                        date: transHistory[index].date,
                        time: transHistory[index].time,
                        isSuccess: transHistory[index].isSuccess,
                      );
                    },
                    itemCount: transHistory.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildText(String name) {
    return Text(
      name,
      style: AppThemeStyles.tabText.copyWith(
        color: const Color(0xff3D348B).withOpacity(0.6),
      ),
    );
  }
}
