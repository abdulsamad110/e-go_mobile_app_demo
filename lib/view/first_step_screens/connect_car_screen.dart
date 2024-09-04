import 'package:e_go_app/view/first_step_screens/get_started_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:e_go_app/view/helper_functions/assets.dart';
import '../custom_widgets/custom_first_step_timeline.dart';
import '../custom_widgets/custom_text_button.dart';
import '../custom_widgets/custom_text_field.dart';
import '../helper_functions/colors.dart';


class ConnectCarScreen extends StatelessWidget {
  ConnectCarScreen({super.key});

  TextEditingController vinTextEditingController = TextEditingController();
  TextEditingController mileageTextEditingController = TextEditingController();

  FocusNode vinFocusNode = FocusNode();
  FocusNode mileageFocusNode = FocusNode();

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
            //customFirstStepTimeline(1),
            customFirstStepTimeline(2),
            //customFirstStepTimeline(3),
            ClipRRect(
              child: Image.asset(
                MyAssets.connectCar,
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
                child: Text("Enter your VIN and current mileage", style: TextStyle(fontSize: 20.sp, color: MyColors.colorPrimaryBlack, fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 12, bottom: 12),
              child: SizedBox(
                width: Get.width,
                child: Text("You will find the VIN (vehicle identification number) as 17-digit character string in field E of your vehicle registration document.", style: TextStyle(fontSize: 16.sp, color: MyColors.colorPrimaryBlack, fontWeight: FontWeight.w400),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: CustomTextField(
                title: "VIN",
                controller: vinTextEditingController,
                focusNode: vinFocusNode,
                keyboardType: TextInputType.text,
                textFieldColor: MyColors.lightGreyColor,
                isReadOnly: false,
                nextFocusNode: mileageFocusNode,
                suffixIcon: const SizedBox(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: CustomTextField(
                title: "Current mileage",
                controller: mileageTextEditingController,
                focusNode: mileageFocusNode,
                keyboardType: TextInputType.number,
                textFieldColor: MyColors.lightGreyColor,
                isReadOnly: false,
                nextFocusNode: null,
                suffixIcon: const SizedBox(),
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
                    Get.to(() => const GetStartedScreen());
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
