import 'package:e_go_app/view/helper_functions/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundGreyColor,
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
            center: LatLng(50.7753, 6.0839),
            zoom: 13.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://api.mapbox.com/styles/v1/abdulsamad110/cktnz2gi70rjm19ndihzn78uy/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYWJkdWxzYW1hZDExMCIsImEiOiJja3RueXdqZDQwNm81MndvMm9rNXkxa2c0In0.ATYqGjOvZ1vgQ9IlEfgYCQ',
                //userAgentPackageName: 'mapbox.mapbox-streets-v8',
                additionalOptions: const {
                  'accessToken' : 'pk.eyJ1IjoiYWJkdWxzYW1hZDExMCIsImEiOiJja3RueXdqZDQwNm81MndvMm9rNXkxa2c0In0.ATYqGjOvZ1vgQ9IlEfgYCQ',
                  'id' : 'mapbox.mapbox-streets-v8'
                },
              ),
          ],
          ),
        ],
      ),
    );
  }
}
