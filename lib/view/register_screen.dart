import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_widgets/custom_text_button.dart';
import 'custom_widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailAddressTextEditingController = TextEditingController();
  TextEditingController newPasswordTextEditingController = TextEditingController();
  TextEditingController confirmNewPasswordTextEditingController = TextEditingController();

  FocusNode emailAddressFocusNode = FocusNode();
  FocusNode newPasswordFocusNode = FocusNode();
  FocusNode confirmNewPasswordFocusNode = FocusNode();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
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
          "Register",
          style: TextStyle(
              fontSize: 24.sp,
              color: MyColors.colorPrimaryBlack,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16, top: 32),
              child: CustomTextField(
                title: "Email Address",
                controller: emailAddressTextEditingController,
                focusNode: emailAddressFocusNode,
                keyboardType: TextInputType.text,
                textFieldColor: MyColors.lightGreyColor,
                isReadOnly: false,
                nextFocusNode: newPasswordFocusNode,
                suffixIcon: const SizedBox(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: CustomTextField(
                title: "New Password",
                controller: newPasswordTextEditingController,
                focusNode: newPasswordFocusNode,
                keyboardType: TextInputType.text,
                textFieldColor: MyColors.lightGreyColor,
                isReadOnly: false,
                nextFocusNode: confirmNewPasswordFocusNode,
                suffixIcon: const SizedBox(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: CustomTextField(
                title: "Confirm New Password",
                controller: confirmNewPasswordTextEditingController,
                focusNode: confirmNewPasswordFocusNode,
                keyboardType: TextInputType.text,
                textFieldColor: MyColors.lightGreyColor,
                isReadOnly: false,
                nextFocusNode: null,
                suffixIcon: const SizedBox(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                    child: Checkbox(
                      fillColor: MaterialStateProperty.resolveWith(
                              (states) => MyColors.colorPrimaryBlack),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  const Expanded(
                    child: Text(
                      "I have read and accept the privacy policy and terms and condition",
                      maxLines: 4,
                      style: TextStyle(
                          color: MyColors.colorPrimaryBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: CustomTextButton(
                  buttonColor: MyColors.colorPrimaryBlack,
                  textColor: MyColors.whiteColor,
                  borderColor: MyColors.colorPrimaryBlack,
                  buttonTitle: "SIGN UP",
                  onTap: () {

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
