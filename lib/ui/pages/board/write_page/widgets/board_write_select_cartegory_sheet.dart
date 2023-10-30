import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardWriteSelectCategorySheet extends StatefulWidget {
  final Function(String)? onCategorySelected;

  ValueNotifier<int>? categoryId;

  BoardWriteSelectCategorySheet({
    Key? key,
    this.categoryId,
    this.onCategorySelected,
  }) : super(key: key);

  @override
  State<BoardWriteSelectCategorySheet> createState() =>
      _BoardWriteSelectCategorySheetState();
}

class _BoardWriteSelectCategorySheetState
    extends State<BoardWriteSelectCategorySheet> {
  List<String> categoryList = ["일상", "맛집", "카페투어", "헬스", "코딩"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: smallGap),
                  child: Text(
                    categoryList[index],
                    style: TextStyle(fontSize: fontMedium),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    {
                      widget.onCategorySelected!(categoryList[index]);
                      widget.categoryId?.value = index;
                      Logger().d("선택된 카테고리의 아이디는 다음과 같습니다 : ${index}");
                    }
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    FontAwesomeIcons.chevronRight,
                    size: fontMedium,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
