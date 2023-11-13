import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/store/session_store.dart';

class MyTownPage extends StatefulWidget {
  const MyTownPage({super.key});

  @override
  State<MyTownPage> createState() => _MyTownPageState();
}

class _MyTownPageState extends State<MyTownPage> {
  bool isSellected = true;
  double sliderValue = 17.0;
  LocationData? currentLocation;

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(35.1595, 129.0603);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  _getUserLocation() async {
    var location = Location();
    try {
      currentLocation = await location.getLocation();
    } catch (e) {
      print("Error: $e");
    }
  }

  void _updateMapZoom(double value) {
    mapController.animateCamera(
      CameraUpdate.newLatLngZoom(_center, value),
    );
  }

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "내 동네 설정",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: IconButton(
              icon: Icon(Icons.help_outline_outlined),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          var model = ref.read(sessionProvider);
          return Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 450,
                  width: double.infinity,
                  child: GoogleMap(
                    zoomControlsEnabled: false,
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 17.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 445,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "내 동네",
                          style: TextStyle(fontSize: fontLarge),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: isSellected
                                          ? kCarrotColor
                                          : Colors.white54),
                                  child: Text(
                                    "${model.user?.location}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isSellected = true;
                                    });
                                  }),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: !isSellected
                                        ? kCarrotColor
                                        : Colors.white54),
                                child: Icon(Icons.add_circle),
                                onPressed: () {
                                  setState(() {
                                    Navigator.pushNamed(
                                        context, Move.locationSelectPage);
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                        Text("${model.user?.location} 근처 동네"),
                        Column(
                          children: [
                            SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 8.0,
                                activeTrackColor: Colors.grey[300],
                                inactiveTrackColor: Colors.grey[300],
                                thumbColor: Colors.orange,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 10.0,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 20.0,
                                ),
                              ),
                              child: Slider(
                                min: 14,
                                max: 17,
                                divisions: 3,
                                value: sliderValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    sliderValue = (newValue * 4).round() / 4;
                                    _updateMapZoom(sliderValue);
                                  });
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("먼 동네"),
                                Text("가까운 동네"),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
