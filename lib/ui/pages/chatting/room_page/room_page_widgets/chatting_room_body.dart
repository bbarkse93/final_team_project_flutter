import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/data/model/chat.dart';
import 'package:team_project/data/model/chat_room.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/data/store/session_store.dart';
import 'package:team_project/ui/pages/chatting/room_page/chatting_room_view_model.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_my_chat.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_other_chat.dart';
import 'package:team_project/ui/pages/chatting/room_page/room_page_widgets/chatting_room_appbar.dart';

class ChattingRoomBody extends ConsumerWidget {
  final _message = TextEditingController();
  String sendMessage = "";
  ChatRoom chatRoom;

  ChattingRoomBody(this.chatRoom, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SessionUser mySession = ref.read(sessionProvider);

    ChatModel? model = ref.watch(chatProvider(chatRoom.productId!));
    List<Chat> chatList = model?.chatList ?? [];

    return Scaffold(
      appBar: ChattingRoomAppBar(chatRoom.productName ?? "Unnamed"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              reverse: true,
              itemBuilder: (context, index) {
                final message = chatList[index].message;
                final time = chatList[index].time;

                Logger().d("time: ${time}");

                final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(time.seconds * 1000, isUtc: false).toLocal();
                final String formattedTime = DateFormat('a hh:mm').format(dateTime);

                return Column(
                  children: [
                    if (chatList[index].writer == mySession.user!.id)
                      ChattingMyChat(text: message, time: formattedTime)
                    else if (chatList[index].writer != chatRoom.sellerId)
                      ChattingOtherChat(name: "${chatRoom.buyerNickName}", text: message, time: formattedTime)
                    else if (chatList[index].writer != chatRoom.buyerId)
                      ChattingOtherChat(name: "${chatRoom.sellerNickname}", text: message, time: formattedTime),
                  ],
                );
              },
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    controller: _message,
                    onChanged: (value) {
                      sendMessage = value;
                    },
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kCarrotColor,
                  ),
                  onPressed: () {
                    Logger().d("Chat button - Executing here!");
                    Logger().d("sendMessage: ${sendMessage}");
                    Logger().d("mySession.user!.id!: ${mySession.user!.id!}");
                    _message.clear();
                    ParamStore param = ref.read(paramProvider);
                    param.chat = Chat(message: sendMessage, writer: mySession.user!.id!, time: Timestamp.now());

                    Logger().d("${param.chat!.message}");

                    final chatProviderInstance = chatProvider(param.chatRoom!.productId!);
                    ref.read(chatProviderInstance.notifier).notifyAdd(param.chat!, param.chatRoom!.productId!);
                  },
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
