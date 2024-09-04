import 'package:e_go_app/view/custom_widgets/custom_circular_progress_round_container.dart';
import 'package:e_go_app/view/custom_widgets/custom_overview_bar.dart';
import 'package:e_go_app/view/helper_functions/assets.dart';
import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: MyColors.backgroundGreyColor,
      appBar: AppBar(
        elevation: 0,
        //centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "My e.GO Car",
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
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                height: 300.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: const DecorationImage(
                    image: AssetImage(MyAssets.egoCar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: Get.width,
                //height: 300.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressRoundContainer(icon: Icons.car_rental, progress: 0.8, firstText: "last connection", secondText: "Yesterday"),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: CircularProgressRoundContainer(icon: Icons.battery_6_bar_outlined, progress: 0.9, firstText: "Battery", secondText: "90%"),
                    ),
                    CircularProgressRoundContainer(icon: Icons.energy_savings_leaf, progress: 0.7, firstText: "Eco Score", secondText: "70%"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("ALL CAR DETAILS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MyColors.orangeColor),),
                      const Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: MyColors.orangeColor,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Last Trip", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MyColors.colorPrimaryBlack),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: customOverviewBar(Icons.route, "Route", "8 km"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: customOverviewBar(Icons.watch_later_outlined, "Travel time", "0:08 h"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: customOverviewBar(Icons.speed, "Total Mileage", "7000 km"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 12),
                child: customOverviewBar(Icons.ev_station_rounded, "Range", "113 km"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
