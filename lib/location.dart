import 'package:geolocator/geolocator.dart';

class Location {
  String _lat, _long;

  Location(String lat, String long) {
    _lat = lat;
    _long = long;
  }

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);

    print('Your current position $position');
  }
}
