import 'package:e_go_app/view/custom_widgets/custom_text_button.dart';
import 'package:e_go_app/view/first_step_screens/collect_user_data.dart';
import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:e_go_app/view/login_screen.dart';
import 'package:e_go_app/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'helper_functions/assets.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(MyAssets.egoCar1),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 18.h, left: 2.w, right: 2.w),
                  child: CustomTextButton(
                      buttonColor: MyColors.colorPrimaryBlack,
                      textColor: MyColors.whiteColor,
                      borderColor: MyColors.colorPrimaryBlack,
                      buttonTitle: "Login",
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      buttonWidth: 350.w,
                      buttonHeight: 70.h
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 18.h, left: 2.w, right: 2.w),
                  child: CustomTextButton(
                      buttonColor: MyColors.transparentColor,
                      textColor: MyColors.colorPrimaryBlack,
                      borderColor: MyColors.colorPrimaryBlack,
                      buttonTitle: "Register",
                      onTap: () {
                        Get.to(() => RegisterScreen());
                      },
                      buttonWidth: 350.w,
                      buttonHeight: 70.h
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 40.h),
                  child: InkWell(
                    onTap: (){
                      //Get.to(CollectUserData());
                    },
                      child: Text("CHANGE LANGUAGE/SPRACHE ÄNDERN", style: TextStyle(color: MyColors.colorPrimaryBlack, fontSize: 14.sp),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
