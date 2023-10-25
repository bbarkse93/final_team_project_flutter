import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/auth/join_page/join_page_widgets/join_body.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JoinBody(),
    );
  }
}
