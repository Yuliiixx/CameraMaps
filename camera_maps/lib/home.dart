import 'package:camera_maps/camera.dart';
import 'package:camera_maps/maps.dart';
import 'package:camera_maps/mapsKampus.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman kedua (SecondPage) ketika tombol Camera ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageAccessCamera()),
                );
              },
              child: Text('Camera'),
            ),
            SizedBox(height: 20), // Jarak antara tombol
           ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman kedua (SecondPage) ketika tombol Camera ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapsFlutter()),
                );
              },
              child: Text('Maps'),
            ),
             SizedBox(height: 20), // Jarak antara tombol
           ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman kedua (SecondPage) ketika tombol Camera ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MultipleMapsFlutter()),
                );
              },
              child: Text('Maps Kampus Padang'),
            ),
          ],
        ),
      ),
    );
  }
}
