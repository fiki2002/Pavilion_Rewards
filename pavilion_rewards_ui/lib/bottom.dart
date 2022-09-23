import 'package:pavilion_rewards_ui/exports/file_exports.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  static final List<Widget> _tab = [
    Tab(
      child: const Text('Home'),
      icon: Image.asset('assets/images/home.png'),
    ),
    Tab(
      child: const Text('Payment'),
      icon: SvgPicture.asset('assets/icons/card_holder.svg'),
    ),
    Tab(
      child: const Text('Cards'),
      icon: SvgPicture.asset('assets/icons/credit_card.svg'),
    ),
    Tab(
      child: const Text('Settings'),
      icon: SvgPicture.asset('assets/icons/settings.svg'),
    ),
  ];
  static const List<Widget> _views = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _views,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(9),
          topRight: Radius.circular(9),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppThemeColor.primaryTextColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: const Color(0xff000000).withOpacity(0.2),
                offset: const Offset(0, 3),
              ),
              const BoxShadow(
                color: AppThemeColor.primaryTextColor,
                offset: Offset(-3, 0),
              ),
              const BoxShadow(
                color: AppThemeColor.primaryTextColor,
                offset: Offset(3, 0),
              )
            ],
          ),
          child: TabBar(
            controller: _tabController,
            labelStyle: AppThemeStyles.bottomNavText,
            labelPadding: const EdgeInsets.only(top: 5,),
            indicatorColor: AppThemeColor.primaryTextColor,
            labelColor: AppThemeColor.primaryColor,
            unselectedLabelColor:
                AppThemeColor.headerTextColor.withOpacity(0.3),
            unselectedLabelStyle: AppThemeStyles.bottomNavText,
            tabs: _tab,
          ),
        ),
      ),
    );
  }
}
