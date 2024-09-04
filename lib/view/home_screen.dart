import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/home_screen_controller.dart';
import 'helper_functions/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: homeScreenController.currentIndex.value,
          children: homeScreenController.pages,
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3,
              ),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 20,
            currentIndex: homeScreenController.currentIndex.value,
            onTap: homeScreenController.changePage,
            selectedItemColor: MyColors.orangeColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: Colors.white,
            unselectedLabelStyle: const TextStyle(color: Colors.white),
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 14.sp,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: const Icon(Icons.home),
                label: homeScreenController.currentIndex.value == 0
                    ? "Overview"
                    : "",
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: const Icon(Icons.newspaper),
                  label: homeScreenController.currentIndex.value == 1
                      ? "News"
                      : ""),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: const Icon(Icons.pin_drop),
                  label: homeScreenController.currentIndex.value == 2
                      ? "Explore"
                      : ""),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: const Icon(Icons.settings_remote),
                  label: homeScreenController.currentIndex.value == 3
                      ? "Remote"
                      : ""),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: const Icon(Icons.person),
                  label: homeScreenController.currentIndex.value == 4
                      ? "Profile"
                      : ""),
            ],
          ),
        ),
      ),
    );
  }
}
