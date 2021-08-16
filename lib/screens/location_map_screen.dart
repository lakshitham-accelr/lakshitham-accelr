import 'package:eimsky_dns_app/configs/ThemeConstants.dart';
import 'package:eimsky_dns_app/configs/palette.dart';
import 'package:eimsky_dns_app/utils/debounce_time.dart';
import 'package:eimsky_dns_app/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationMapScreen extends StatefulWidget {
  final String? address;
  final Map<String, double>? latLang;
  final Function? setLocationDetailsFunc;

  LocationMapScreen({Key? key, this.address, this.latLang, this.setLocationDetailsFunc}) : super(key: key);

  @override
  _LocationMapScreenState createState() => _LocationMapScreenState();
}

class _LocationMapScreenState extends State<LocationMapScreen> {
  Position? _position;
  double? _latitude;
  double? _longitude;
  String _address = "";

  @override
  void initState() {
    super.initState();
    if (widget.address != null) {
      _address = widget.address!;
    }
    if (widget.latLang != null) {
      _latitude = widget.latLang!['latitude'];
      _longitude = widget.latLang!['longitude'];
    }

    debouncedCallBack(300, () {
      _getCurrentLocation();
    });
  }

  void _getCurrentLocation() async {
    try {
      Position res = await Geolocator.getCurrentPosition();
      setState(() {
        _position = res;
        _latitude = _latitude ?? res.latitude;
        _longitude = _longitude ?? res.longitude;
      });
    } catch (e) {
      print("Get location error...");
    }

    _getAddress();
  }

  void _getAddress() async {
    try {
      List<Placemark> newPlace = await GeocodingPlatform.instance.placemarkFromCoordinates(_latitude!, _longitude!, localeIdentifier: "en");

      Placemark placeMark = newPlace[0];
      String? name = placeMark.name;
      String? subLocality = placeMark.subLocality;
      String? locality = placeMark.locality;
      String? administrativeArea = placeMark.administrativeArea;
      String? postalCode = placeMark.postalCode;
      String? country = placeMark.country;
      String address = "$name, $subLocality, $locality, $administrativeArea $postalCode, $country";

      setState(() {
        _address = address;
      });
    } catch (e) {
      print("Get address error...");
    }
  }

  void _updatePosition(CameraPosition _camPosition) {
    debouncedCallBack(300, () {
      setState(() {
        _latitude = _camPosition.target.latitude;
        _longitude = _camPosition.target.longitude;
      });

      _getAddress();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.topRight,
                child: Icon(Icons.close, size: 20.0, color: Palette.primaryColor),
              ),
            ),
            (_position != null)
                ? Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
                        color: Palette.borderColor,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
                        child: Stack(
                          children: [
                            GoogleMap(
                              myLocationEnabled: true,
                              zoomControlsEnabled: false,
                              buildingsEnabled: true,
                              onCameraMove: ((_position) => _updatePosition(_position)),
                              initialCameraPosition: CameraPosition(target: LatLng(_latitude!, _longitude!), zoom: 12),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 50.0),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 60.0,
                                    color: Palette.primaryColor,
                                  ),
                                  Container(
                                    width: 17.0,
                                    height: 17.0,
                                    margin: EdgeInsets.only(
                                      bottom: 15.0,
                                    ),
                                    decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : LoadingWidget(),
            (_position != null)
                ? Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _addressText(_address),
                        _latLanText("( $_latitude , $_longitude )"),
                      ],
                    ),
                  )
                : SizedBox.shrink(),
            InkWell(
              onTap: () {
                if (widget.setLocationDetailsFunc != null) {
                  widget.setLocationDetailsFunc!(_address, _latitude, _longitude);
                }
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 60.0,
                ),
                decoration: BoxDecoration(
                  color: Palette.primaryColor,
                  borderRadius: BorderRadius.circular(ThemeConstants.borderRadius / 1.5),
                ),
                child: Text(
                  "Set Location".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: ThemeConstants.font,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _addressText(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          color: Palette.gray_3,
          fontWeight: FontWeight.w600,
          fontSize: 13.0,
          letterSpacing: 1.0,
        ),
      ),
    );
  }

  Text _latLanText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Palette.gray_1,
        fontSize: 11.0,
        letterSpacing: 1.2,
      ),
    );
  }
}

class LocationMapArguments {
  final String? address;
  final Map<String, double>? latLang;
  final Function? setLocationDetailsFunc;

  LocationMapArguments({this.address, this.latLang, this.setLocationDetailsFunc});
}
