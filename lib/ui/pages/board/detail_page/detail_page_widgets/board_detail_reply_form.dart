import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/dto/reply_request.dart';
import 'package:team_project/ui/pages/board/detail_page/board_detail_view_model.dart';

class BoardDetailReplyForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  final boardReply = TextEditingController();

  void submit(WidgetRef ref) {
    BoardDetailModel? model = ref.read(boardDetailProvider);
    if (formKey.currentState!.validate()) {
      ReplyWriteDTO replyReqDTO = ReplyWriteDTO(
        boardReply: boardReply.text,
        boardId: model!.board.id,
        userId: 1,
      );
      Logger().d("나 여기까지옴1 ${replyReqDTO.boardReply}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Consumer(
        builder: (context, ref, child) {
          return Row(
            children: [
              Icon(
                Icons.insert_photo_outlined,
                size: 30,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.location_on_outlined,
                size: 30,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Form(
                  key: formKey,
                  child: TextFormField(
                    controller: boardReply,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(224, 224, 224, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(224, 224, 224, 1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(224, 224, 224, 1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      hintText: '댓글을 입력해 주세요',
                      helperStyle: TextStyle(fontSize: 14, color: kHintColor),
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () async {
                  BoardDetailModel? model = ref.read(boardDetailProvider);
                  submit(ref);
                  ReplyWriteDTO replyReqDTO = ReplyWriteDTO(
                    boardId: model!.board.id,
                    boardReply: boardReply.text,
                    userId: 1,
                  );
                  Logger().d("나 여기까지옴2 ${replyReqDTO.boardReply}");
                  await ref
                      .read(boardDetailProvider.notifier)
                      .notifyAdd(replyReqDTO);
                },
                icon: Icon(Icons.send),
              )
            ],
          );
        },
      ),
    );
  }
}
