import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const Header(),
              const RedeemContainer(),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: const VirtualCardList()),
              ),
              const TransactionList(),
            ],
          ),
        ),
      ]),
    );
  }
}
