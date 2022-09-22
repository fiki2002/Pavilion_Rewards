import 'package:flutter/material.dart';
import 'package:pavilion_rewards_ui/components/widgets/credit_cards.dart';

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

   int _selectedCreditCard = 0;

  final PageController _pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose;
  }

  _onSelectedCreditCard(int index) {
    setState(() {
      _selectedCreditCard = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Column(
      children:  [
        Padding(
          padding: const EdgeInsets.only(
            top: 24,
          ),
          child: SizedBox(
            height: h*0.3,
            child: PageView.builder(itemCount: creditCardsList.length,
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onSelectedCreditCard,
            itemBuilder: (context , index) => const CreditCard()
        ),
          ),
        ),
      ],
    );
  }
}
