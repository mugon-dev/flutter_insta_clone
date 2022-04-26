import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_clone/src/components/image_data.dart';
import 'package:insta_clone/src/controller/bottom_nav_controller.dart';
import 'package:insta_clone/src/pages/home.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Obx(
          () => Scaffold(
            appBar: AppBar(),
            body: IndexedStack(
              index: controller.pageIndex.value,
              children: [
                const Hoem(),
                Container(child: Text('Home')),
                Container(child: Text('search')),
                Container(child: Text('upload')),
                Container(child: Text('activity')),
                Container(child: Text('mypage')),
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
                BottomNavigationBarItem(icon: ImageData(IconsPath.homeOff), activeIcon: ImageData(IconsPath.homeOn), label: 'home'),
                BottomNavigationBarItem(icon: ImageData(IconsPath.searchOff), activeIcon: ImageData(IconsPath.searchOn), label: 'home'),
                BottomNavigationBarItem(icon: ImageData(IconsPath.uploadIcon), label: 'home'),
                BottomNavigationBarItem(icon: ImageData(IconsPath.activeOff), activeIcon: ImageData(IconsPath.activeOn), label: 'home'),
                BottomNavigationBarItem(
                    icon: Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
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
