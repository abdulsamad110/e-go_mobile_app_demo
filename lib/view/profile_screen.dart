import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'custom_widgets/custom_profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundGreyColor,
      appBar: AppBar(
        elevation: 0,
        //centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Hi, FirstName",
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            color: MyColors.colorPrimaryBlack,
            //color: Colors.white,
          ),
        ),
        backgroundColor: MyColors.backgroundGreyColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              // *************** FIRST SECTION *****************************
              SizedBox(
                width: Get.width,
                child: Text(
                  "My Account", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: MyColors.colorPrimaryBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: const Divider(
                    height: 2,
                    color: MyColors.colorPrimaryBlack,
                  ),
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.person,
                  title: "Name",
                  trailTitle: "FirstName LastName",
                  trailing: Icons.arrow_forward_ios_rounded
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.email,
                  title: "Email",
                  trailTitle: "user@email.com",
                  trailing: Icons.arrow_forward_ios_rounded
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.key,
                  title: "Change Password",
                  trailTitle: "",
                  trailing: Icons.arrow_forward_ios_rounded
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.language,
                  title: "Language",
                  trailTitle: "English",
                  trailing: Icons.arrow_forward_ios_rounded
              ),
              SizedBox(height: 16.h,),
              // *************** SECOND SECTION *****************************
              SizedBox(
                width: Get.width,
                child: Text(
                  "My e.GO", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: MyColors.colorPrimaryBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: const Divider(
                  height: 2,
                  color: MyColors.colorPrimaryBlack,
                ),
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.directions_car,
                  title: "Model Name",
                  trailTitle: "e.wave X",
                  trailing: Icons.arrow_forward_ios_rounded,
                  showTrail: false
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.confirmation_num,
                  title: "VIN",
                  trailTitle: "WKD483020N39325",
                  trailing: Icons.arrow_forward_ios_rounded,
                  showTrail: false
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.cast_connected,
                  title: "Car Configure",
                  trailTitle: "",
                  trailing: Icons.arrow_forward_ios_rounded
              ),
              SizedBox(height: 16.h,),
              // *************** THIRD SECTION *****************************
              SizedBox(
                width: Get.width,
                child: Text(
                  "More Information", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: MyColors.colorPrimaryBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: const Divider(
                  height: 2,
                  color: MyColors.colorPrimaryBlack,
                ),
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.policy,
                  title: "Privacy Policy",
                  trailTitle: "",
                  trailing: Icons.arrow_forward_ios_rounded,
              ),
              actionTile(
                onTap: () {

                },
                leading: Icons.description,
                title: "Terms of Service",
                trailTitle: "",
                trailing: Icons.arrow_forward_ios_rounded,
              ),
              actionTile(
                onTap: () {

                },
                leading: Icons.question_answer,
                title: "FAQs",
                trailTitle: "",
                trailing: Icons.arrow_forward_ios_rounded,
              ),
              actionTile(
                onTap: () {

                },
                leading: Icons.help,
                title: "Help",
                trailTitle: "",
                trailing: Icons.arrow_forward_ios_rounded,
              ),
              SizedBox(height: 16.h,),
              // *************** FOURTH SECTION *****************************
              SizedBox(
                width: Get.width,
                child: Text(
                  "Feedback", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: MyColors.colorPrimaryBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: const Divider(
                  height: 2,
                  color: MyColors.colorPrimaryBlack,
                ),
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.bug_report,
                  title: "I Spotted a Bug",
                  trailTitle: "",
                  trailing: Icons.arrow_forward_ios_rounded,
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.feedback,
                  title: "Suggestion",
                  trailTitle: "",
                  trailing: Icons.arrow_forward_ios_rounded
              ),
              SizedBox(height: 16.h,),
              // *************** FIFTH SECTION *****************************
              SizedBox(
                width: Get.width,
                child: Text(
                  "Account Actions", textAlign: TextAlign.left,
                  style: TextStyle(
                      color: MyColors.colorPrimaryBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: const Divider(
                  height: 2,
                  color: MyColors.colorPrimaryBlack,
                ),
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.delete,
                  title: "Delete Account",
                  trailTitle: "",
                  trailing: Icons.arrow_forward_ios_rounded
              ),
              actionTile(
                  onTap: () {

                  },
                  leading: Icons.logout,
                  title: "Log Out",
                  trailTitle: "",
                  trailing: Icons.arrow_forward_ios_rounded
              ),
              SizedBox(height: 16.h,),
            ],
          ),
        ),
      ),
    );
  }
}
