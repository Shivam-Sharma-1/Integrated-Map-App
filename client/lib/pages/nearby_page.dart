import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/toolbar.dart';
import '../config/app_icons.dart';
import '../config/app_strings.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Toolbar(title: AppStrings.nearby),
        body: FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(12.971599, 77.594566),
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(markers: [
                Marker(
                  point: const LatLng(12.971599, 77.594566),
                  width: 100,
                  height: 60,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular((14)))),
                        child: const Text(
                          "Username",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SvgPicture.asset(
                        AppIcons.icLocation,
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn),
                      ),
                    ],
                  ),
                )
              ])
            ]));
  }
}
