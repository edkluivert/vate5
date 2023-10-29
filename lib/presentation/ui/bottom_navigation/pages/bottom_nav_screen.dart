
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vate5/core/config/app_strings.dart';
import 'package:vate5/core/utils/image_ext.dart';

import '../../../../core/config/app_color.dart';
import '../../../../core/config/app_text_style.dart';
import '../../../controller/bottom_nav_controller.dart';
import '../../home/pages/home_screen.dart';
import '../../search/pages/search_screen.dart';
import '../../settings/pages/settings_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  final BottomNavController controller = Get.find();
  static final AppTextStyle _textStyle = AppTextStyle.instance;
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();


  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (controller) {
        return WillPopScope(
          key: _scaffoldMessengerKey,
          onWillPop: ()=>controller.onWillPop(context),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: IndexedStack(
              index: controller.tabIndex,
              children:  const [
                HomeScreen(),
                SearchScreen(),
                SettingScreen(),

              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: AppColor.secondaryColor.withOpacity(0.50),
              selectedItemColor: AppColor.secondaryColor,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xFF010731),
              selectedLabelStyle: _textStyle.displaySmall.copyWith(
                  color: AppColor.secondaryColor
              ),
              unselectedLabelStyle: _textStyle.displaySmall,
              elevation: 0,
              items: [
                _bottomNavigationBarItem(
                    icon: Icons.home,
                    label: 'Home',
                    index: 0
                ),
                _bottomNavigationBarItem(
                    icon: Icons.search,
                    label: 'Search',
                    index: 1
                ),
                _bottomNavigationBarItem(
                    icon: Icons.settings,
                    label: 'Settings',
                    index: 2
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label, required int index}) {
    return BottomNavigationBarItem(
      icon: Icon(icon,
       size: 24,
        color: controller.tabIndex == index ? AppColor.secondaryColor: Colors.white.withOpacity(0.50),),
      label: label,
    );
  }
}
