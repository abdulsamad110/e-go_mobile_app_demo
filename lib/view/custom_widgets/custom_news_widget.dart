import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/news_model.dart';
import 'package:get/get.dart';

class CustomNewsWidget extends StatelessWidget {
  final NewsModel news;

  const CustomNewsWidget({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 340,
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: const BoxDecoration(
        color: MyColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image at the top
          ClipRRect(
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(12.0),
            //   topRight: Radius.circular(12.0),
            // ),
            child: Image.asset(
              news.image,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          // Title
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              news.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              width: Get.width,
              height: 100,
              child: Text(
                news.description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}