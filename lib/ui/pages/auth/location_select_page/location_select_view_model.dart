import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/repository/address_repository.dart';

class LocationModel {
  final List<dynamic>? location;
  String? text;
  LocationModel(this.location);
}

class LocationViewModel extends StateNotifier<LocationModel?> {
  LocationViewModel(super.state);

  //TODO : 초기화면 설정
  Future<void> notifyInit() async {
    List<dynamic>? location = null;
  }

  void updateText(String value) async {
    List<dynamic> location =
        await AddressApiRepository().findByName(location: "$value");
    Logger().d("ViewModel로 넘어온 결과값은:  $location");
    state = LocationModel(location);
  }
}

final locationSelectProvider =
    StateNotifierProvider<LocationViewModel, LocationModel?>((ref) {
  return LocationViewModel(null)..notifyInit();
});
