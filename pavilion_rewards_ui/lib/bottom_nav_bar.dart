import 'package:flutter/cupertino.dart';
import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedScreenIndex = 0;
  void _onCardTapped(int index) {
    setState(() {
      selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = <Widget>[
      const HomePage(),
      const HomePage(),
      const HomePage(),
      const HomePage(),
    ];

    return Scaffold(
      body: _screens.elementAt(selectedScreenIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 5,
          currentIndex: selectedScreenIndex,
          selectedLabelStyle: AppThemeStyles.bottomNavText
              .copyWith(color: AppThemeColor.primaryColor),
          unselectedLabelStyle: AppThemeStyles.bottomNavText.copyWith(
            color: AppThemeColor.headerTextColor.withOpacity(0.3),
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: _onCardTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined),
              label: 'Payment',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.creditcard,
              ),
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
