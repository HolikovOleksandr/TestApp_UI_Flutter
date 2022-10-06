import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_exercise/resources/fonts.dart';
import 'package:test_exercise/resources/colors.dart';
import 'package:test_exercise/resources/pathes.dart';
import 'package:test_exercise/src/ui/home/home_page.dart';

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
  final List<Widget> _pages = [
    const HomePage(),
    Center(
      child: Text(
        'ИСТОРИЯ',
        style: AppFonts.size36Bold.copyWith(color: AppColor.subtext),
      ),
    ),
    Center(
      child: Text(
        'QR-code',
        style: AppFonts.size36Bold.copyWith(color: AppColor.subtext),
      ),
    ),
    Center(
      child: Text(
        'КАРТА',
        style: AppFonts.size36Bold.copyWith(color: AppColor.subtext),
      ),
    ),
    Center(
      child: Text(
        'ЕЩЁ',
        style: AppFonts.size36Bold.copyWith(color: AppColor.subtext),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: [
          BottomNavigationBar(
            selectedItemColor: AppColor.primary,
            unselectedItemColor: AppColor.white.withOpacity(0.5),
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColor.navBarBg,
            currentIndex: _selectedIndex,
            onTap: _navigateBottomBar,
            items: [
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  AppIcons.home,
                  color: AppColor.primary,
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
                activeIcon:
                    SvgPicture.asset(AppIcons.time, color: AppColor.primary),
                icon: SvgPicture.asset(
                  AppIcons.time,
                  color: AppColor.white.withOpacity(0.5),
                ),
                label: 'История',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(AppIcons.qrCode,
                      color: Colors.transparent),
                ),
                label: 'QR-code',
              ),
              BottomNavigationBarItem(
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
          Positioned(
            bottom: 50,
            child: FloatingActionButton(
              backgroundColor: AppColor.blue,
              onPressed: () {},
              child: SvgPicture.asset(
                AppIcons.qrCode,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
