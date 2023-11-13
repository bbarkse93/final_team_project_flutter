import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/user.dart';
import 'package:team_project/data/repository/my_carrot_repository.dart';
import 'package:team_project/data/store/session_store.dart';

class MyCarrotModel {
  User user;

  MyCarrotModel(this.user);

  // String nickname;
  // String userPicUrl;
  //
  // MyCarrotModel(this.nickname, this.userPicUrl);
}

class MyCarrotViewModel extends StateNotifier<MyCarrotModel?> {
  MyCarrotViewModel(super.state);

  Future<void> notifyInit(int id) async {
    Logger().d("여기가 실행 되나");
    ResponseDTO responseDTO = await MyCarrotRepository().findUser(id);

    Logger().d("이게 문제네1 ${responseDTO.response}");
    state = MyCarrotModel(responseDTO.response);
    Logger().d("이게 문제네2 ${state?.user.userPicUrl}");
  }
}

final myCarrotProviderProvider =
    StateNotifierProvider<MyCarrotViewModel, MyCarrotModel?>((ref) {
  final sessionUser = ref.read(sessionProvider);
  return MyCarrotViewModel(null)..notifyInit(sessionUser.user!.id!);
});
