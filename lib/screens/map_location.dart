///
/// AVANCED EXAMPLE:
/// Screen with map and search box on top. When the user selects a place through autocompletion,
/// the screen is moved to the selected location, a path that demonstrates the route is created, and a "start route"
/// box slides in to the screen.
///
library;

import 'dart:async';

import 'package:active_ecommerce_cms_demo_app/custom/btn.dart';
import 'package:active_ecommerce_cms_demo_app/custom/toast_component.dart';
import 'package:active_ecommerce_cms_demo_app/my_theme.dart';
import 'package:active_ecommerce_cms_demo_app/other_config.dart';
import 'package:active_ecommerce_cms_demo_app/repositories/address_repository.dart';
import 'package:active_ecommerce_cms_demo_app/screens/address.dart';
import 'package:flutter/material.dart';
import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' hide Marker, LatLng;
import 'package:google_maps_place_picker_mb/google_maps_place_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;

class MapLocation extends StatefulWidget {
  final dynamic address;

  const MapLocation({Key? key, this.address}) : super(key: key);

  @override
  State<MapLocation> createState() => MapLocationState();
}

class MapLocationState extends State<MapLocation> {
  LatLng? selectedLatLng;

  static LatLng kInitialPosition = const LatLng(
    51.52034098371205,
    -0.12637399200000668,
  );

  final MapController _mapController = MapController();

  String? country;
  String? state;
  String? city;
  String? suburb;
  String? road;

  @override
  void initState() {
    super.initState();

    if (widget.address?.location_available == true) {
      kInitialPosition =
          LatLng(widget.address.lat, widget.address.lang);
    }
  }

  /// 🔹 Reverse Geocoding Function
  Future<void> getAddressFromLatLng(double lat, double lng) async {
    final url = Uri.parse(
        'https://nominatim.openstreetmap.org/reverse?lat=$lat&lon=$lng&format=json');

    final response = await http.get(
      url,
      headers: {
        'User-Agent': 'com.jomlah.android'
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final address = data['address'];

      setState(() {
        country = address['country'];
        state = address['state'];
        city = address['city'] ??
            address['town'] ??
            address['village'];
        suburb = address['suburb'];
        road = address['road'];
      });

      print("Country: $country");
      print("State: $state");
      print("City: $city");
      print("Suburb: $suburb");
      print("Road: $road");
    } else {
      print("Failed to fetch address");
    }
  }

  Future<void> onTapPickHere() async {
    if (selectedLatLng == null) return;

    await getAddressFromLatLng(
      selectedLatLng!.latitude,
      selectedLatLng!.longitude,
    );

    // 🔹 Send lat/lng to backend
    var addressUpdateLocationResponse =
    await AddressRepository().getAddressUpdateLocationResponse(
      widget.address.id,
      selectedLatLng!.latitude,
      selectedLatLng!.longitude,
      country:country,
      city:city,
      area:state,
      suburb:suburb,
      road:road,

    );

    ToastComponent.showDialog(
        addressUpdateLocationResponse.message);

    if (!mounted) return;
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context).choose_an_address),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {
            if (!mounted) return;
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: kInitialPosition,
              initialZoom: 15,
              onTap: (tapPosition, point) {
                setState(() {
                  selectedLatLng = point;
                });
              },
            ),
            children: [
              TileLayer(
                urlTemplate:
                "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName:
                'com.jomlah.android',
              ),
              if (selectedLatLng != null)
                MarkerLayer(
                  markers: [
                    Marker(
                      point: selectedLatLng!,
                      width: 80,
                      height: 80,
                      child: const Icon(
                        Icons.location_pin,
                        size: 40,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
            ],
          ),

          /// 🔹 Address Preview Box
          if (country != null)
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "$road, $suburb\n$city, $state\n$country",
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),

          /// 🔹 Save Button
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: onTapPickHere,
              child:  Text(AppLocalizations.of(context).save_ucf),
            ),
          )
        ],
      ),
    );
  }
}
