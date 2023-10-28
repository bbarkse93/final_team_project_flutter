import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';

class BoardListCategoryButtons extends StatelessWidget {
  const BoardListCategoryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _categoryIcon(text: "주제"),
                  _categoryIcon(text: "인기글"),
                  _categoryIcon(text: "동네맛집"),
                  _categoryIcon(text: "동네질문"),
                  _categoryIcon(text: "동네소식"),
                  _categoryIcon(text: "생활정보"),
                  _categoryIcon(text: "취미생활"),
                ],
              ),
            ),
          ),
          Divider(thickness: 1, color: kHintColor),
        ],
      ),
    );
  }

  Widget _categoryIcon({required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        child: Text(text, style: TextStyle(color: kDarkColor)),
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // 둥근 모서리 설정
          )),
          side: MaterialStateProperty.all(
              BorderSide(color: kHintColor, width: 2.0)), // 선 색상 및 두께 설정
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }
}
