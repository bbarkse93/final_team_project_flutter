import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/repository/chat_repository.dart';

import '../../../../data/model/chat.dart';

// 1. 창고 데이터
class ChatModel {
  List<Chat> chatList;
  ChatModel(this.chatList);
}

// 2. 창고
class ChatViewModel extends StateNotifier<ChatModel?> {
  ChatViewModel(super.state);

  Future<void> notifyInit(int productId) async {
    Logger().d("여기는 때리나?, NotifyInit () 메소드임 ");
    ChatRepository().streamChat(productId).listen((event) {
      state = ChatModel(event);
    });
  }

  Future<void> notifyAdd(Chat chat, int productId) async {
    Logger().d("여기는 넘어와 ???????????????????? ");
    ChatRepository().insert(chat, productId);
  }
}

// 3. 창고 관리자
final chatProvider = StateNotifierProvider.family<ChatViewModel, ChatModel?, int>((ref, productId) {
  // ChatModel을 초기화한 상태와 함께 ChatViewModel을 반환
  return ChatViewModel(ChatModel([]))..notifyInit(productId);
});
