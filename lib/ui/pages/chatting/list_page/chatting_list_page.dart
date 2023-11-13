import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/ui/pages/chatting/list_page/chatting_list_view_model.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_body.dart';

class ChattingListPage extends ConsumerWidget {
  const ChattingListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("채팅", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: false,
      ),
      body: RefreshIndicator(
          child: ChattingListBody(),
          onRefresh: () async {
            ref.watch(chatListProvider.notifier).notifyInit();
          }),
    );
  }
}
