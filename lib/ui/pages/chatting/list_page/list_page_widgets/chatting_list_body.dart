import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/chatting/list_page/list_page_widgets/chatting_list_item.dart';

class ChattingListBody extends StatelessWidget {
  const ChattingListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: ChattingListItem(),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(thickness: 1);
      },
    );
  }
}
