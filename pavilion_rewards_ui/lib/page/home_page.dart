import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const Header(),
              const RedeemContainer(),
              Padding(
                padding: const EdgeInsets.only(left: 24.0,),
                child: SizedBox(
                    height: h * 0.25,
                    child: const VirtualCardList(),),
              ),
              const TransactionList(),
            ],
          ),
        ),
      ]),
    );
  }
}
