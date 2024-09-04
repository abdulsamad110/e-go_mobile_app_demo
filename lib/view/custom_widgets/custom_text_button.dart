import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  Color buttonColor;
  Color textColor;
  Color borderColor;
  String buttonTitle;
  Function onTap;
  double buttonWidth;
  double buttonHeight;

  CustomTextButton({
    required this.buttonColor,
    required this.textColor,
    required this.buttonTitle,
    required this.borderColor,
    required this.onTap,
    required this.buttonWidth,
    required this.buttonHeight,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: buttonHeight.h,
        //padding: EdgeInsets.symmetric(vertical: 15.h),
        width: buttonWidth.w,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(26.w),
          border: Border.all(
            color: borderColor, // Set the border color here
            width: 1.2, // Set the border width here
          ),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp),
          ),
        ),
      ),
    );
  }
}
