import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardWriteSelectCategorySheet extends StatefulWidget {
  final Function(String)? onCategorySelected;
  // ValueNotifier<int>? categoryId; // int로 변경

  BoardWriteSelectCategorySheet({
    Key? key,
    // this.categoryId,
    this.onCategorySelected,
  }) : super(key: key);

  @override
  State<BoardWriteSelectCategorySheet> createState() => _BoardWriteSelectCategorySheetState();
}

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
                    // if (widget.categoryId != null) {
                    //   widget.categoryId!.value = index + 1;
                    //   Logger().d("widget.categoryId!.value : ${widget.categoryId!.value}");
                    // } else {
                    //   Logger().d("widget.categoryId 널값이다.");
                    // }

                    // categoryId의 value를 int 변수에 할당
                    // int categoryIdInt = widget.categoryId?.value ?? 1;

                    // 테스팅
                    if (widget.onCategorySelected != null) {
                      widget.onCategorySelected!(categoryList[index]);
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
