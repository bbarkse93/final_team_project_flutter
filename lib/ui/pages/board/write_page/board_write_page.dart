import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_body.dart';

class BoardWritePage extends StatelessWidget {
  const BoardWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoardWriteBody(),
    );
  }
}
