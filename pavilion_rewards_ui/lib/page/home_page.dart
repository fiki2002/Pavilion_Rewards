import 'package:flutter/material.dart';
import 'package:pavilion_rewards_ui/components/header.dart';
import 'package:pavilion_rewards_ui/components/redeem_container.dart';
import 'package:pavilion_rewards_ui/components/virtual_card_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
            Header(),
           RedeemContainer(),
           VirtualCardList()
        ],
      ),
    );
  }
}
