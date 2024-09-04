import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/home_screen_controller.dart';
import 'custom_widgets/custom_news_widget.dart';
import 'helper_functions/colors.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (homeScreenController) {
        return Scaffold(
          backgroundColor: MyColors.backgroundGreyColor,
          appBar: AppBar(
            elevation: 0,
            //centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              "New for you",
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: MyColors.colorPrimaryBlack,
                //color: Colors.white,
              ),
            ),
            backgroundColor: MyColors.backgroundGreyColor,
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 24.h),
            child: ListView.builder(
              itemCount: homeScreenController.newsList.length,
              itemBuilder: (context, index) {
                return CustomNewsWidget(news: homeScreenController.newsList[index]);
              },
            ),
          ),
        );
      }
    );
  }
}
