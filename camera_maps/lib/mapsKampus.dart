import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class MultipleMapsFlutter extends StatefulWidget {
  const MultipleMapsFlutter({Key? key}) : super(key: key);
  @override
  State<MultipleMapsFlutter> createState() => _MultipleMapsFlutterState();
}
class _MultipleMapsFlutterState extends State<MultipleMapsFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Flutter'),
        backgroundColor: Colors.deepPurple,
      ),
      body: GoogleMap(
        myLocationEnabled: true,
        initialCameraPosition: const CameraPosition(
            target: LatLng(-0.9491069781838861, 100.36682948630191),
            zoom: 10
        ),
        mapType: MapType.normal,
        markers: {
          const Marker(
              markerId: MarkerId("UNAND"),
              position: LatLng(-0.9139473576200832, 100.45818622119018),infoWindow: InfoWindow(
              title: 'Universitas Andalas', snippet: 'Universitas Andalas Padang'
          )),
          const Marker(
              markerId: MarkerId("UNP"),
              position: LatLng(-0.8970869389539252, 100.35081869754367),infoWindow: InfoWindow(
              title: 'Universitas Negeri Padang', snippet: 'Universitas Negeri Padang'
          )),
          const Marker(
              markerId: MarkerId("UPI"),
              position: LatLng(-0.9580654616510863, 100.39657037969184),infoWindow: InfoWindow(
              title: 'Universitas Putra Indonesia "YPTK"', snippet: 'Universitas Putra Indonesia "YPTK" Padang'
          )),
          const Marker(
              markerId: MarkerId("UBH"),
              position: LatLng(-0.9062893316862338, 100.34490630852716),infoWindow: InfoWindow(
              title: 'UBH - Universitas Bung Hatta"', snippet: 'UBH - Universitas Bung Hatta Padang'
          )),
          const Marker(
              markerId: MarkerId("UIN Imam Bonjol Padang"),
              position: LatLng(-0.8303098532626199, 100.36788638842586),infoWindow: InfoWindow(
              title: 'UIN Imam Bonjol', snippet: 'UIN Imam Bonjol padang'
          )),
        },
      ),
    );
  }
}