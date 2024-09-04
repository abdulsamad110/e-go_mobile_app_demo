import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget customOverviewBar(IconData icon, String title, String details){
  return Container(
    height: 58.h,
    width: 420.w,
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
      color : MyColors.whiteColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 12.w,
            ),
            Container(
              width: 36.w,
              color: Colors.transparent,
              child: Icon(icon, size: 28.sp,),
            ),
            SizedBox(
              width: 12.w,
            ),
            Container(
              width: 200.w,
              color: Colors.transparent,
              child: Text(title, style: TextStyle(fontSize: 16.sp, color: MyColors.colorPrimaryBlack, fontWeight: FontWeight.w400),),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: 72.w,
              color: Colors.transparent,
              child: Text(details, textAlign: TextAlign.right, style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16.sp, color: MyColors.colorPrimaryBlack,),),
            ),
            SizedBox(
              width: 15.w,
            ),
          ],
        ),
      ],
    ),
  );
}