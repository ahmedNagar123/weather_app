import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataLocation();
  }

  void getDataLocation() async {
    var dataLocation = await WeatherModel().getDataLocation();
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return LocationScreen(
          weatherData: dataLocation,
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.red,
          size: 100,
        ),
      ),
    );
  }
}
