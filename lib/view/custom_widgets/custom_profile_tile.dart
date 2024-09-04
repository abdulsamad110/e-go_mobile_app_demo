import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper_functions/colors.dart';

Widget actionTile({
  required String title,
  required String trailTitle,
  required IconData leading,
  required IconData trailing,
  bool showTrail = true,
  required GestureTapCallback onTap,
}) {
  return ListTile(
    onTap: () => onTap(),
    title: Text(title, style: fieldTitleTextStyle.copyWith(fontSize: 16.sp)),
    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
    leading: Icon(
      leading,
      size: 28, // Icon size
      color: MyColors.colorPrimaryBlack, // Icon color
    ),
    minLeadingWidth: 16.w,
    trailing: SizedBox(
      width: 175.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            trailTitle,
            style: TextStyle(
                color: MyColors.colorPrimaryBlack, fontSize: 14.sp),
          ),
          SizedBox(width: 4.w,),
          if (showTrail)
            Icon(
              trailing,
              color: MyColors.colorPrimaryBlack,
            )
        ],
      ),
    ),
  );
}

TextStyle fieldTitleTextStyle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
);
