import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makom_customer_app/constants.dart';
import 'package:makom_customer_app/services/location/location_provider.dart';
import 'package:makom_customer_app/widgets/common_button.dart';
import 'package:provider/provider.dart';

class Googlemaps extends StatefulWidget {
  @override
  _GooglemapsState createState() => _GooglemapsState();
}

class _GooglemapsState extends State<Googlemaps> {
  LatLng currentLocation;
  // ignore: unused_field
  GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    void onCreated(GoogleMapController controller) {
      setState(() {
        _mapController = controller;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Consumer<LocationProvider>(
          builder: (context, loc, child) {
            var currentLocation = LatLng(loc.latitude, loc.longitude);
            return loc.isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(
                    children: [
                      GoogleMap(
                        initialCameraPosition:
                            CameraPosition(target: currentLocation, zoom: 11),
                        zoomControlsEnabled: false,
                        minMaxZoomPreference: MinMaxZoomPreference(1.5, 20.8),
                        myLocationEnabled: true,
                        myLocationButtonEnabled: true,
                        mapType: MapType.normal,
                        mapToolbarEnabled: true,
                        onCameraMove: (CameraPosition position) {
                          loc.onCameraMove(position);
                        },
                        onMapCreated: onCreated,
                        onCameraIdle: () {
                          loc.getMoveCamera();
                        },
                      ),
                      Center(
                          child: Container(
                              height: 30,
                              margin: EdgeInsets.only(bottom: 40),
                              child: Image.asset('assets/icons/pinicon.png'))),
                      Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  loc.getAddress.toString(),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CommonButton(
                              text: "Confirm",
                              onPressed: () =>
                                  Navigator.pop(context, loc.getAddress.toString()),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
