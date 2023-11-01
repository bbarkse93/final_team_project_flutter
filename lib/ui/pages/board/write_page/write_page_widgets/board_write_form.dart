import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/utils/validator_util.dart';
import 'package:team_project/data/dto/board_request.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_cartegory_button.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_custom_text_form_field.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_description_text_form.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_picture_add_area.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_warn.dart';

class BoardWriteForm extends StatelessWidget {
  BoardWriteForm({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final TextEditingController boardTitleController = TextEditingController();
  final TextEditingController boardContentController = TextEditingController();
  final categoryId = ValueNotifier<int>(1);
  final photoList = ValueNotifier<List<String>>([]);

  void submit(WidgetRef ref) {
    if (formKey.currentState!.validate()) {
      if (boardTitleController != null && boardContentController != null && categoryId != null && photoList != null) {
        BoardWriteDTO boardWriteDTO = BoardWriteDTO(
          boardTitle: boardTitleController.text,
          boardContent: boardContentController.text,
          categoryId: categoryId.value,
          photoList: photoList.value,
        );
        // 나머지 로직...
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        child: Column(
          children: [
            BoardWriteCategoryButton(categoryId: categoryId),
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
                child: BoardWritePictureAddArea(photoList: photoList),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
