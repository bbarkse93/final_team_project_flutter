import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/repository/address_repository.dart';

class LocationModel {
  final List<String>? location;
  String? text;
  LocationModel(this.location, this.text);
}

class LocationViewModel extends StateNotifier<LocationModel?> {
  LocationViewModel(super.state);

  //TODO : 초기화면 설정
  Future<void> notifyInit() async {
    List<dynamic>? location = null;
  }

  void updateText(String value) async {
    List<String> location =
        await AddressApiRepository().findByName(location: "$value");

    state = LocationModel(location, value);
  }
}

final locationSelectProvider =
    StateNotifierProvider<LocationViewModel, LocationModel?>((ref) {
  return LocationViewModel(null)..notifyInit();
});
