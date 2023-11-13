import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/ui/pages/chatting/list_page/chatting_list_view_model.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_body.dart';

class ChattingListPage extends ConsumerWidget {
  const ChattingListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Logger().d("천천히 할수있다 하나씩!");
    return Scaffold(
      appBar: AppBar(title: Text("채팅"), centerTitle: false),
      body: RefreshIndicator(
          child: ChattingListBody(),
          onRefresh: () async {
            ref.watch(chatListProvider.notifier).notifyInit();
          }),
    );
  }
}
