import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget customFirstStepTimeline(int step){
  return Container(
    height: 100.h,
    width: Get.width,
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    decoration: const BoxDecoration(
      borderRadius : BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      ),
      // boxShadow : [BoxShadow(
      //     color: Color.fromRGBO(0, 0, 0, 0.25),
      //     offset: Offset(0,4),
      //     blurRadius: 4
      // )],
      color : MyColors.transparentColor,
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //First
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: step >= 1 ? MyColors.colorPrimaryBlack : Colors.transparent, // Adjust the color as needed
                      border: Border.all(
                        color: Colors.black, // Specify the border color as black
                        width: 2.0, // Adjust the border width as needed
                      ),
                    ),
                    child: Center(
                      child: Text("1", style: TextStyle(fontSize: 10, color: step >= 1 ? Colors.white : Colors.black),),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              Text("Data", style: TextStyle(fontSize: 14.sp),),
            ],
          ),

          //Second
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 2,
                    width: 100.w,
                    color: step > 1 ? Colors.black : Colors.grey,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: step >= 2 ? MyColors.colorPrimaryBlack : Colors.transparent, // Adjust the color as needed
                      border: Border.all(
                        color: step >= 2 ? MyColors.colorPrimaryBlack : Colors.grey, // Specify the border color as black
                        width: 2.0, // Adjust the border width as needed
                      ),
                    ),
                    child: Center(
                      child: Text("2", style: TextStyle(fontSize: 10, color: step >= 2 ? Colors.white : Colors.grey),),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 100.w,
                    color: step > 2 ? Colors.black : Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              Text("Connect Car", style: TextStyle(fontSize: 14.sp, color: step >= 2 ? Colors.black : Colors.grey),),
            ],
          ),
          //Third
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  // Container(
                  //   height: 2,
                  //   width: 15.w,
                  //   color: Colors.black,
                  // ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: step >= 3 ? MyColors.colorPrimaryBlack : Colors.transparent, // Adjust the color as needed
                      border: Border.all(
                        color: step >= 3 ? MyColors.colorPrimaryBlack : Colors.grey, // Specify the border color as black
                        width: 2.0, // Adjust the border width as needed
                      ),
                    ),
                    child: Center(
                      child: Text("3", style: TextStyle(fontSize: 10, color: step >= 3 ? Colors.white : Colors.grey),),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              Text("Go", style: TextStyle(fontSize: 14.sp, color: step >= 3 ? Colors.black : Colors.grey),),
            ],
          ),
        ],
      ),
    ),
  );
}