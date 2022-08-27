import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sart_up_project/Features/Home/manger/cubit/google_map_cubit.dart';

class CustomGoogleMap extends StatefulWidget {
  CustomGoogleMap({Key? key}) : super(key: key);

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.476,
  );

  static const CameraPosition _MyLocation = CameraPosition(
    target: LatLng(31.205753, 29.924526),
    zoom: 19.151926040649414,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  bool isLake = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<GoogleMapCubit, GoogleMapState>(
      listener: (context, state) {
        if (state is GoogleMapChangeLcoation && isLake == false) {
          _goToTheLake();
          isLake = true;
        } else {
          _resetLocation();
          isLake = false;
          ;
        }
      },
      child: GoogleMap(
        myLocationButtonEnabled: false,
        myLocationEnabled: true,
        mapToolbarEnabled: false,
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(_kLake),
    );
  }

  Future<void> _resetLocation() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(_MyLocation),
    );
  }
}
