import 'package:uuid/uuid.dart';
import 'dart:io';

class PlaceLocation{

  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
  });

  final double latitude;
  final double longitude;
  final String address;
  
}
const uuid = Uuid();
class Place {

  Place({
    required this.title,
    required this.image,
    required this.location,
    String? id,
  }) : id = id ?? uuid.v4() ;

  final String title;
  final String id;
  final File image;
  final PlaceLocation location;

}