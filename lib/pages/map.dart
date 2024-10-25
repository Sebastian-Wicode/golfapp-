import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:golf_app/components/toolbar.dart';
import 'package:golf_app/config/app_strings.dart';
import 'package:latlong2/latlong.dart';
import 'package:line_icons/line_icons.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar( title: AppStrings.nearby ),
      body: FlutterMap(options: MapOptions(
        initialCenter: LatLng(21.19893,  -101.72274),
        initialZoom: 10,
      ), children:  [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng( 21.141719, -101.69787), 
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),                       
                      ),
                       child : Text(
                          "Username",
                          style: TextStyle(color: Colors.black),
                        ),
                    ),
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.red, 
                        BlendMode.srcIn,
                      ),
                      child: Icon(LineIcons.locationArrow),
                    ),
                  ],
                ),
                )
            ])
            ],
      ),
    );
}
}