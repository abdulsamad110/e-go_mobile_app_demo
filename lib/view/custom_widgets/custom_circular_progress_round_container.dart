import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularProgressRoundContainer extends StatelessWidget {
  final IconData icon;
  final double progress;
  String firstText;
  String secondText;

  CircularProgressRoundContainer({super.key,
    required this.icon,
    required this.progress,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            color: MyColors.whiteColor,
            shape: BoxShape.circle,
            // border: Border.all(
            //   color: Colors.blue, // Border color
            //   width: 8.0, // Border width
            // ),
          ),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 2.0, // Progress bar width
                    valueColor: const AlwaysStoppedAnimation<Color>(MyColors.colorPrimaryBlack), // Progress bar color
                  ),
                ),
                Icon(
                  icon,
                  size: 40, // Icon size
                  color: MyColors.colorPrimaryBlack, // Icon color
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 6.h,),
        Text(firstText, style: TextStyle(color: MyColors.colorPrimaryBlack, fontSize: 12.sp, fontWeight: FontWeight.w400),),
        SizedBox(height: 4.h,),
        Text(secondText, style: TextStyle(color: MyColors.colorPrimaryBlack, fontSize: 15.sp, fontWeight: FontWeight.w500),),
      ],
    );
  }
}