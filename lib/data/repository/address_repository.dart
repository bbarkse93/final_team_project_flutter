import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';
import 'package:riverpod/riverpod.dart';

// 페이지 나갈 때 자동으로 없어지게!
final addressApiRepository =
    Provider.autoDispose<AddressApiRepository>((ref) => AddressApiRepository());

class AddressApiRepository {
  final apiKey = "18A0CDA5-BF5F-34EA-B8F1-9A5E3D90BB83";
  final Dio addressDio = Dio();

  Future<List<String>> findByGeo() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    final url =
        "http://api.vworld.kr/req/data?service=data&request=GetFeature&data=LT_C_ADEMD_INFO&key=$apiKey&geomfilter=point(${position.longitude} ${position.latitude})";
    final response = await addressDio.get(url);
    final json = response.data;
    if (json["response"]["status"] == "OK") {
      return (json["response"]["result"]["featureCollection"]["features"]
              as List)
          .map((e) => e["properties"]["full_nm"].toString())
          .toList();
    } else {
      return [];
    }
  }

  Future<List<String>> findByName({required String location}) async {
    final url =
        "http://api.vworld.kr/req/search?key=$apiKey&request=search&category=L4&type=district&size=1000&query=$location";
    final response = await addressDio.get(url);
    final json = response.data;
    Logger().d("이거 제이슨  $json");
    if (json["response"]["status"] == "OK") {
      return (json["response"]["result"]["items"] as List)
          .map((e) => e["title"].toString())
          .toList();
    } else {
      return [];
    }
  }
}
