import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/model/chat_room.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/repository/chat_repository.dart';
import 'package:team_project/data/store/session_store.dart';
import 'package:team_project/main.dart';

// 창고 데이터
class ChattingListModel {
  List<ChatRoom> chatList;

  ChattingListModel(this.chatList);
}

// 2. 창고
class ChattingListViewModel extends StateNotifier<ChattingListModel?> {
  ChattingListViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit() async {
    Logger().d("채팅 - 통신 직전 코드로 넘어옵니다.");
    ChatRepository().fetchChatList().listen((event) {
      state = ChattingListModel(event);
    });
  }

  Future<void> notifyAdd(SessionUser sessionUser, Product product) async {
    Logger().d("채팅방 (in List) 추가됨");
    Logger().d("채팅방 (product) ${product.productName}");
    Logger().d("채팅방 (product) ${product.user!.nickname}");

    // fetchCreate 함수를 호출하고 데이터를 받을 때까지 기다립니다.
    final chatRooms = await ChatRepository().fetchCreate(sessionUser, product).first;

    if (chatRooms.isNotEmpty) {
      ref.watch(chatListProvider.notifier as AlwaysAliveProviderListenable).state = ChattingListModel(chatRooms);
      // 값이 갱신된 후에 로깅합니다.
      Logger().d("chatRoomList[0].id : ${chatRooms[0].id}");
      Logger().d("chatRoomList[0].buyerNickName : ${chatRooms[0].buyerNickName}");
      Logger().d("chatRoomList[0].sellerNickname : ${chatRooms[0].sellerNickname}");
    }
  }
}

final chatListProvider = StateNotifierProvider.autoDispose<ChattingListViewModel, ChattingListModel?>((ref) {
  Logger().d("여기는 오니2 ? 채팅관련2");
  return ChattingListViewModel(null, ref)..notifyInit();
});
