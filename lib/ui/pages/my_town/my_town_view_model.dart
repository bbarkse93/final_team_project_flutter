// 창고 데이터
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyTownModel {}

// 창고
class MyTownViewModel extends StateNotifier<MyTownModel?> {
  MyTownViewModel(super.state);
}

final myTownProvider =
    StateNotifierProvider<MyTownViewModel, MyTownModel?>((ref) {
  return MyTownViewModel(null);
});
