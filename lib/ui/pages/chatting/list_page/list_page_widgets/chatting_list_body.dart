import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/model/chat_room.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/data/store/session_store.dart';
import 'package:team_project/ui/pages/chatting/list_page/chatting_list_view_model.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_item.dart';
import 'package:team_project/ui/pages/chatting/room_page/chatting_room_page.dart';

class ChattingListBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 유저에 관한정보
    SessionStore sessionUser = ref.read(sessionProvider);
    ChattingListModel? model = ref.watch(chatListProvider);

    // 채팅방에 대한 정보
    ParamStore chatRoomParamStore = ref.read(paramProvider);
    List<ChatRoom> chatRoomList = model!.chatList;

    if (model != null) {
      chatRoomList = model.chatList; // 예를 들어 chatRooms 속성을 사용
      var filteredList = chatRoomList.where((e) => e.sellerId != e.buyerId).toList();
      return ListView.separated(
        itemCount: filteredList.length, // 실제 데이터 개수로 설정
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // 필요한 값들 바인딩
              chatRoomParamStore.chatRoom = filteredList[index];

              ChatRoom flowedChatRoom = filteredList[index];
              Logger().d("flowedChatRoom.sellerNickname : ${flowedChatRoom.sellerNickname}");
              Logger().d("flowedChatRoom.productName : ${flowedChatRoom.productName}");
              Logger().d("flowedChatRoom.sellerNickname : ${flowedChatRoom.buyerUserPicUrl}");

              // 2. 화면 이동
              Navigator.push(context, MaterialPageRoute(builder: (_) => ChattingRoomPage(flowedChatRoom)));
            },
            child: ChattingListItem(filteredList[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(thickness: 1);
        },
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
