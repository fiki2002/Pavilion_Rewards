import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class VirtualCardList extends StatefulWidget {
  const VirtualCardList({Key? key}) : super(key: key);

  @override
  State<VirtualCardList> createState() => _VirtualCardListState();
}

class _VirtualCardListState extends State<VirtualCardList> {
  List<Widget> creditCardsList = [
    const CreditCard(),
    const CreditCard(),
    const CreditCard(),
    const CreditCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return const CardListing();
  }
}

class CardListing extends StatelessWidget {
  const CardListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 15,
        );
      },
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return const CreditCard();
      },
    );
  }
}
