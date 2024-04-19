import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _NaviMumbai = CameraPosition(
    target: LatLng(19.0330, 73.02972),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _NaviMumbai,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: Set<Marker>.from([
          Marker(
            markerId: MarkerId('marker1'),
            position: LatLng(19.07460949786028, 73.06765825793525),
            infoWindow: InfoWindow(
              title: 'Marker 1',
              snippet: 'San Francisco, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker2'),
            position: LatLng(19.164616723935247, 72.99984449049809),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker3'),
            position: LatLng(19.220528684590224, 73.16184404604239),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker4'),
            position: LatLng(19.262745514134423, 73.13602972839034),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker5'),
            position: LatLng(19.23592449439943, 73.10174263835978),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker6'),
            position: LatLng(19.202623340072176, 72.99986099941177),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker7'),
            position: LatLng(19.19698733849241, 72.99753922426243),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker8'),
            position: LatLng(19.264981351314386, 72.97465155368269),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker9'),
            position: LatLng(19.264981351314386, 72.97465155368269),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker10'),
            position: LatLng(19.267977175167815, 72.86914227104964),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker11'),
            position: LatLng(19.21876786174957, 72.83663147315765),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker12'),
            position: LatLng(19.165023111902833, 72.84177788460094),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker13'),
            position: LatLng(19.14503535968261, 72.84473033823565),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker14'),
            position: LatLng(19.057003014545177, 72.9208055514174),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker16'),
            position: LatLng(19.070451056541764, 72.89831221848586),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker17'),
            position: LatLng(19.050267005583958, 72.85621270086212),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker18'),
            position: LatLng(19.039136033384224, 73.03636751210847),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker19'),
            position: LatLng(19.07571953973788, 73.07345966081395),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker20'),
            position: LatLng(19.052544954962364, 73.02891143447597),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
          Marker(
            markerId: MarkerId('marker21'),
            position: LatLng(18.98078938009354, 73.03135660352324),
            infoWindow: InfoWindow(
              title: 'Marker 2',
              snippet: 'San Mateo, CA',
            ),
          ),
        ]),
      ),
    );
  }
}
