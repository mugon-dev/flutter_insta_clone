import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_clone/src/components/image_data.dart';
import 'package:insta_clone/src/controller/bottom_nav_controller.dart';
import 'package:insta_clone/src/pages/active_history.dart';
import 'package:insta_clone/src/pages/home.dart';
import 'package:insta_clone/src/pages/mypage.dart';
import 'package:insta_clone/src/pages/search.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Obx(
          () => Scaffold(
            body: IndexedStack(
              index: controller.pageIndex.value,
              children: [
                const Hoem(),
                // 중첩라우팅
                Navigator(
                  key: controller.searchPageNavigationKey,
                  onGenerateRoute: (settings) => MaterialPageRoute(
                    builder: (context) => const Search(),
                  ),
                ),
                Container(),
                const ActiveHistory(),
                const MyPage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed, // active시 올라가는 애니메이션 제거
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              currentIndex: controller.pageIndex.value,
              onTap: controller.changeBottomNav,
              items: [
                BottomNavigationBarItem(
                    icon: ImageData(IconsPath.homeOff),
                    activeIcon: ImageData(IconsPath.homeOn),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: ImageData(IconsPath.searchOff),
                    activeIcon: ImageData(IconsPath.searchOn),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: ImageData(IconsPath.uploadIcon), label: 'home'),
                BottomNavigationBarItem(
                    icon: ImageData(IconsPath.activeOff),
                    activeIcon: ImageData(IconsPath.activeOn),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                      width: 30,
                      height: 30,
                    ),
                    label: 'home'),
              ],
            ),
          ),
        ),
        onWillPop: controller.willPopAction);
  }
}
