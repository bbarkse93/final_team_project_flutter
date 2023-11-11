import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/user.dart';
import 'package:team_project/data/repository/my_carrot_repository.dart';
import 'package:team_project/data/store/session_store.dart';

class MyCarrotModel {
  User user;

  MyCarrotModel(this.user);
// int id;
  // String username;
  // String nickname;
  // String userPicUrl;
  // String location;
  // String userCreatedAt;
  //
  // MyCarrotModel(this.id, this.username, this.nickname, this.userPicUrl, this.location, this.userCreatedAt);
}

class MyCarrotViewModel extends StateNotifier<MyCarrotModel?> {
  MyCarrotViewModel(super.state);

  Future<void> notifyInit(int id) async {
    Logger().d("여기가 실행 되나");
    ResponseDTO responseDTO = await MyCarrotRepository().fetchUser(id);
    state = MyCarrotModel(responseDTO.response);
  }
}

final myCarrotProviderProvider = StateNotifierProvider<MyCarrotViewModel, MyCarrotModel?>((ref) {
  final sessionUser = ref.read(sessionProvider);
  return MyCarrotViewModel(null)..notifyInit(sessionUser.user!.id!);
});
