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
  State<BoardWriteSelectCategorySheet> createState() => _BoardWriteSelectCategorySheetState();
}

//
//
//
//
//

class _BoardWriteSelectCategorySheetState extends State<BoardWriteSelectCategorySheet> {
  List<String> categoryList = ["동네맛집", "동네질문", "동네소식", "생활정보", "취미생활"];

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
                      widget.categoryId?.value = index + 1;
                      Logger().d("선택된 카테고리의 아이디는 다음과 같습니다 : ${index + 1}");
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
