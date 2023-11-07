import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:team_project/_core/constants/size.dart';

class MyTownPage extends StatefulWidget {
  const MyTownPage({super.key});

  @override
  State<MyTownPage> createState() => _MyTownPageState();
}

class _MyTownPageState extends State<MyTownPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(35.1595, 129.0603);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.clear),
          title: Text("내 동네 설정"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Icon(Icons.help_outline_outlined),
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 400,
                width: double.infinity,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 17.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 395,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                height: 500,
                width: MediaQuery.of(context).size.width,
              ),
            )
          ],
        ),
        bottomNavigationBar: ClipRRect());
  }
}
