import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/ui/pages/home/home_page.dart';
import 'package:test_exercise/src/ui/pages/unknown/unknown_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // NAVIGATE AROUNT THE BOTTOM NAV BAR
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // PAGES TO NAVIGATE TO
  final List<Widget> _pages = const [
    HomePage(),
    UnknownPage(),
    UnknownPage(),
    UnknownPage(),
    UnknownPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.white.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.navBarBg,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                AppIcons.home,
                color: AppColor.primary,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.home,
                color: AppColor.white.withOpacity(0.5),
              ),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                AppIcons.time,
                color: AppColor.primary,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.time,
                color: AppColor.white.withOpacity(0.5),
              ),
            ),
            label: 'История',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                AppIcons.qrCode,
                color: AppColor.primary,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.qrCode,
                color: AppColor.white.withOpacity(0.5),
              ),
            ),
            label: 'QR-code',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                AppIcons.location,
                color: AppColor.primary,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.location,
                color: AppColor.white.withOpacity(0.5),
              ),
            ),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                AppIcons.more,
                color: AppColor.primary,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcons.more,
                color: AppColor.white.withOpacity(0.5),
              ),
            ),
            label: 'Еще',
          ),
        ],
      ),
    );
  }
}
