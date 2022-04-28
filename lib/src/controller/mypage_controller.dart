import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_clone/src/controller/auth_controller.dart';
import 'package:insta_clone/src/models/instagram_user.dart';

class MyPageController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  Rx<IUser> targetUser = IUser().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    _loadData();
  }

  void setTargetUser() {
    var uid = Get.parameters['targetUid'];
    if (uid == null) {
      targetUser(AuthController.to.user.value);
    }
  }

  void _loadData() {
    setTargetUser();
  }
}
