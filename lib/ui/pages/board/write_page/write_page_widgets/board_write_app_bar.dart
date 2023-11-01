import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/dto/board_request.dart';
import 'package:team_project/ui/pages/board/list_page/board_list_view_model.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_form.dart';

class BoardWriteAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  BoardWriteForm boardWriteForm = BoardWriteForm();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return (AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.clear),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                boardWriteForm.submit(ref);
                if (boardWriteForm.boardTitleController != null &&
                    boardWriteForm.boardContentController != null &&
                    boardWriteForm.photoList != null &&
                    boardWriteForm.categoryId != null) {
                  BoardWriteDTO boardWriteDTO = BoardWriteDTO(
                    boardTitle: boardWriteForm.boardTitleController!.text,
                    boardContent: boardWriteForm.boardContentController!.text,
                    photoList: boardWriteForm.photoList!.value,
                    categoryId: boardWriteForm.categoryId!.value,
                  );
                  ref.read(boardListProvider.notifier).notifyAdd(boardWriteDTO);
                }
              },
              child: Text(
                "완료",
                style: TextStyle(color: kHintColor, fontSize: fontMedium),
              ),
            )
          ],
          title: Text(
            "동네 생활 글쓰기",
            style: TextStyle(color: kDarkColor),
          ),
        ));
      },
    );
  }
}
