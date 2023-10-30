import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/board/write_page/widgets/board_write_app_bar.dart';
import 'package:team_project/ui/pages/board/write_page/widgets/board_write_form.dart';

class BoardWriteBody extends StatelessWidget {
  BoardWriteForm boardWriteForm = BoardWriteForm();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoardWriteAppBar(),
      body: SingleChildScrollView(
        child: boardWriteForm,
      ),
    );
  }
}
