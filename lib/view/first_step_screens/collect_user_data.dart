import 'package:e_go_app/view/first_step_screens/connect_car_screen.dart';
import 'package:e_go_app/view/helper_functions/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../custom_widgets/custom_first_step_timeline.dart';
import '../custom_widgets/custom_text_button.dart';
import '../custom_widgets/custom_text_field.dart';
import '../helper_functions/colors.dart';

class CollectUserData extends StatelessWidget {
  CollectUserData({super.key});

  TextEditingController firstNameTextEditingController = TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();

  FocusNode firstNameFocusNode = FocusNode();
  FocusNode lastNameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundGreyColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: MyColors.orangeColor,
              ),
              //SizedBox(width: 1.w,),
              //Text("Back", style: TextStyle(fontSize: 14.sp, color: MyColors.orangeColor),)
            ],
          ),
        ),
        title: Text(
          "First Steps",
          style: TextStyle(
              fontSize: 24.sp,
              color: MyColors.colorPrimaryBlack,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customFirstStepTimeline(1),
            //customFirstStepTimeline(2),
            //customFirstStepTimeline(3),
            ClipRRect(
              child: Image.asset(
                MyAssets.userData,
                height: 200.0,
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 18.h,),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 12),
              child: SizedBox(
                width: Get.width,
                  child: Text("Tell us who you are", style: TextStyle(fontSize: 20.sp, color: MyColors.colorPrimaryBlack, fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 12, bottom: 12),
              child: SizedBox(
                width: Get.width,
                child: Text("We would like to get to know you better to stay in touch.", style: TextStyle(fontSize: 16.sp, color: MyColors.colorPrimaryBlack, fontWeight: FontWeight.w400),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 6),
              child: CustomTextField(
                title: "First name",
                controller: firstNameTextEditingController,
                focusNode: firstNameFocusNode,
                keyboardType: TextInputType.text,
                textFieldColor: MyColors.lightGreyColor,
                isReadOnly: false,
                nextFocusNode: lastNameFocusNode,
                suffixIcon: const SizedBox(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 12),
              child: SizedBox(
                width: Get.width,
                child: Text("Your first name must consist of at least 2 letters", style: TextStyle(fontSize: 12.sp, color: MyColors.colorPrimaryBlack, fontWeight: FontWeight.w400),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 6),
              child: CustomTextField(
                title: "Last name",
                controller: lastNameTextEditingController,
                focusNode: lastNameFocusNode,
                keyboardType: TextInputType.text,
                textFieldColor: MyColors.lightGreyColor,
                isReadOnly: false,
                nextFocusNode: null,
                suffixIcon: const SizedBox(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 12),
              child: SizedBox(
                width: Get.width,
                child: Text("Your last name must consist of at least 2 letters", style: TextStyle(fontSize: 12.sp, color: MyColors.colorPrimaryBlack, fontWeight: FontWeight.w400),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 10),
              child: CustomTextButton(
                  buttonColor: MyColors.colorPrimaryBlack,
                  textColor: MyColors.whiteColor,
                  borderColor: MyColors.colorPrimaryBlack,
                  buttonTitle: "NEXT",
                  onTap: () {
                    Get.to(() => ConnectCarScreen());
                  },
                  buttonWidth: 160.w,
                  buttonHeight: 70.h
              ),
            ),
          ],
        ),
      ),
    );
  }
}
