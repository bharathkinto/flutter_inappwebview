import 'package:geolocator/geolocator.dart';

class Location {
  Location();
  double latitude;
  double longitude;

   Future <void> getPosition  () async {
    try{
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude=position.latitude;
      longitude=position.longitude;
      //return(position);
    } catch(e)
    { latitude=0.00;
    longitude=0.00;
      print('couldnt connect try latre');
    }}


}


