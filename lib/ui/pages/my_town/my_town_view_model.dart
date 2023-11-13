// 창고 데이터
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

class MyTownModel {}

// 창고
class MyTownViewModel extends StateNotifier<MyTownModel?> {
  MyTownViewModel(super.state);

  Future<Position> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    return position;
  }
}

final myTownProvider =
    StateNotifierProvider<MyTownViewModel, MyTownModel?>((ref) {
  return MyTownViewModel(null);
});
