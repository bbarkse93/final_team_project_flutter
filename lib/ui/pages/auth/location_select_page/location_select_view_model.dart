import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/repository/address_repository.dart';

class LocationModel {
  final List<dynamic>? location;
  String? searchText;

  LocationModel(this.location, {this.searchText});
}

class LocationViewModel extends StateNotifier<LocationModel?> {
  LocationViewModel(super.state);

  Future<void> notifyInit() async {
    List<dynamic>? location =
        await AddressApiRepository().findByName(location: "광안동");
    state = LocationModel(location, searchText: state?.searchText);
  }

  void updateText(String value) {
    state = LocationModel(state?.location, searchText: value);
  }
}

final locationSelectProvider =
    StateNotifierProvider<LocationViewModel, LocationModel?>((ref) {
  return LocationViewModel(null)..notifyInit();
});
