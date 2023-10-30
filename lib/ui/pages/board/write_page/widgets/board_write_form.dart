import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/utils/validator_util.dart';
import 'package:team_project/data/dto/board_request.dart';
import 'package:team_project/ui/pages/board/write_page/widgets/board_write_cartegory_button.dart';
import 'package:team_project/ui/pages/board/write_page/widgets/board_write_custom_text_form_field.dart';
import 'package:team_project/ui/pages/board/write_page/widgets/board_write_description_text_form.dart';
import 'package:team_project/ui/pages/board/write_page/widgets/board_write_picture_add_area.dart';
import 'package:team_project/ui/pages/board/write_page/widgets/board_write_warn.dart';

class BoardWriteForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final boardTitleController = TextEditingController();
  final boardContentController = TextEditingController();
  final photoList = ValueNotifier<List<String>>([]);

  void submit(WidgetRef ref) {
    if (formKey.currentState!.validate()) {
      BoardWriteDTO boardWriteDTO = BoardWriteDTO(
        boardTitle: boardTitleController.text,
        boardContent: boardContentController.text,
        photoList: photoList.value,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BoardWriteCategoryButton(),
          BoardWriteWarn(),
          BoardWriteCustomTextFormField(
            hint: "제목을 입력하세요",
            funValidator: validateTitle(),
            controller: boardTitleController,
          ),
          BoardWriteDescriptionTextForm(
            hint: "근처 이웃과 동네에서의 소소한 일상, 정보를 공유해보세요.",
            controllerName: boardContentController,
            funValidator: validateContent(),
          ),
          Divider(
            height: 2,
            color: Colors.grey[300],
          ),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BoardWritePictureAddArea(),
            ),
          ),
        ],
      ),
    );
  }
}
