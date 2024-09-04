import 'package:e_go_app/view/custom_widgets/custom_text_field.dart';
import 'package:e_go_app/view/first_step_screens/collect_user_data.dart';
import 'package:e_go_app/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'custom_widgets/custom_text_button.dart';
import 'helper_functions/assets.dart';
import 'helper_functions/colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailAddressTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  FocusNode emailAddressFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    double bottom = MediaQuery.of(context).viewInsets.bottom;
    double appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: MyColors.colorPrimaryBlack,
          ),
        ),
        title: Text(
          "Login",
          style: TextStyle(
              fontSize: 24.sp,
              color: MyColors.colorPrimaryBlack,
              fontWeight: FontWeight.w500),
        ),
      ),
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
          SingleChildScrollView(
            reverse: true,
            child: Container(
              height: Get.height-appBarHeight-bottom,
              width: Get.width,
              color: Colors.black.withOpacity(0.6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18, bottom: 12),
                    child: CustomTextField(
                        title: "Email Address",
                        controller: emailAddressTextEditingController,
                        focusNode: emailAddressFocusNode,
                        keyboardType: TextInputType.text,
                        textFieldColor: MyColors.whiteColor,
                        isReadOnly: false,
                        nextFocusNode: passwordFocusNode,
                        suffixIcon: const SizedBox(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18, bottom: 16),
                    child: CustomTextField(
                      title: "Password",
                      controller: passwordTextEditingController,
                      focusNode: passwordFocusNode,
                      textFieldColor: MyColors.whiteColor,
                      keyboardType: TextInputType.text,
                      isReadOnly: false,
                      nextFocusNode: null,
                      suffixIcon: const SizedBox(),
                    ),
                  ),
                  const Text("FORGOT YOUR PASSWORD?", style: TextStyle(color: MyColors.whiteColor),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50, top: 12),
                    child: CustomTextButton(
                        buttonColor: MyColors.whiteColor,
                        textColor: MyColors.colorPrimaryBlack,
                        borderColor: MyColors.whiteColor,
                        buttonTitle: "SIGN IN",
                        onTap: () {
                          //Get.to(() => const HomeScreen());
                          Get.to(() => CollectUserData());
                        },
                        buttonWidth: 160.w,
                        buttonHeight: 70.h
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
