import 'dart:async';

import 'package:e_go_app/view/custom_widgets/custom_remote_button.dart';
import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';

class RemoteScreen extends StatefulWidget {
  const RemoteScreen({super.key});

  @override
  State<RemoteScreen> createState() => _RemoteScreenState();
}

class _RemoteScreenState extends State<RemoteScreen> {

  bool iconColor1 = false;
  bool iconColor2 = false;
  bool iconColor3 = false;
  bool iconColor4 = false;
  bool iconColor5 = false;
  bool iconColor6 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundGreyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomRemoteButton(
                  icon: Icons.lock,
                  label: 'Lock',
                  onTap: () {
                    setState(() {
                      iconColor1 = true;
                    });
                    Timer(const Duration(milliseconds: 500), () {
                      setState(() {
                        iconColor1 = false;
                      });
                    });
                  },
                  iconColor: iconColor1,
                ),
                CustomRemoteButton(
                  icon: Icons.lock_open,
                  label: 'Unlock',
                  onTap: () {
                    setState(() {
                      iconColor2 = true;
                    });
                    Timer(const Duration(milliseconds: 500), () {
                      setState(() {
                        iconColor2 = false;
                      });
                    });
                  },
                  iconColor: iconColor2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomRemoteButton(
                  icon: Icons.volume_up,
                  label: 'Horn',
                  onTap: () {
                    setState(() {
                      iconColor3 = true;
                    });
                    Timer(const Duration(milliseconds: 500), () {
                      setState(() {
                        iconColor3 = false;
                      });
                    });
                  },
                  iconColor: iconColor3,
                ),
                CustomRemoteButton(
                  icon: Icons.lightbulb,
                  label: 'Parking Lights',
                  onTap: () {
                    if(iconColor4){
                      setState(() {
                        iconColor4 = false;
                      });
                    }
                    else{
                      setState(() {
                        iconColor4 = true;
                      });
                    }
                  },
                  iconColor: iconColor4,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomRemoteButton(
                  icon: Icons.ac_unit,
                  label: 'AC',
                  onTap: () {
                    if(iconColor5){
                      setState(() {
                        iconColor5 = false;
                      });
                    }
                    else{
                      setState(() {
                        iconColor5 = true;
                      });
                    }
                  },
                  iconColor: iconColor5,
                ),
                CustomRemoteButton(
                  icon: Icons.local_fire_department,
                  label: 'Heater',
                  onTap: () {
                    if(iconColor6){
                      setState(() {
                        iconColor6 = false;
                      });
                    }
                    else{
                      setState(() {
                        iconColor6 = true;
                      });
                    }
                  },
                  iconColor: iconColor6,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
