import 'package:pavilion_rewards_ui/exports/file_exports.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedScreenIndex = 0;
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
          elevation: 2,
          unselectedItemColor: AppThemeColor.scaffoldBGColor,
          currentIndex: selectedScreenIndex,
          selectedLabelStyle: AppThemeStyles.bottomNavText
              .copyWith(color: AppThemeColor.primaryColor),
          unselectedLabelStyle: AppThemeStyles.bottomNavText.copyWith(
            color: Colors.grey,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/home.png'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/card_holder.svg'),
              label: 'Payment',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/credit_card.svg'),
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/settings.svg'),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
