import 'package:location/location.dart';

class LocationInput {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    print('mw;sklj');
    try {
      final position = await Location().getLocation();
      latitude = position.latitude;
      longitude = position.longitude;
      print(latitude);
    } catch (e) {
      print(e);
      print('vndkn');
    }
  }
}
