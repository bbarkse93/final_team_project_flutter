import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/store/session_store.dart';

class CustomSideNavigator extends ConsumerWidget {
  final scaffoldKey;
  const CustomSideNavigator(this.scaffoldKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: getDrawerWidth(context),
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  scaffoldKey.currentState!.openEndDrawer();
                  // Navigator.pushNamed(context, Move.postWritePage);
                },
                child: const Text(
                  "글쓰기",
                  style: TextStyle(
                    fontSize: fontLarge,
                    fontWeight: FontWeight.bold,
                    color: kDarkColor,
                  ),
                ),
              ),
              const Divider(),
              TextButton(
                onPressed: () {
                  scaffoldKey.currentState!.openEndDrawer();
                  ref.read(sessionProvider).logout();
                },
                child: const Text(
                  "로그아웃",
                  style: TextStyle(
                    fontSize: fontLarge,
                    fontWeight: FontWeight.bold,
                    color: kDarkColor,
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
