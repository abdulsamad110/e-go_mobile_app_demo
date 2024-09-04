import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRemoteButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onTap;
  final bool iconColor;

  const CustomRemoteButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 150.h,
        width: 150.w,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: MyColors.colorPrimaryBlack,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.0,
              color: iconColor? MyColors.orangeColor : Colors.white,
            ),
            SizedBox(height: 8.h),
            Text(
              label,
              style: TextStyle(
                color: iconColor? MyColors.orangeColor : Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}