import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_select_cartegory_sheet.dart';

class BoardWriteCategoryButton extends StatefulWidget {
  ValueNotifier<int>? categoryId;

  BoardWriteCategoryButton({
    this.categoryId, // 'required' 키워드를 사용하여 photoList가 null이 아니라는 것을 명시
    Key? key,
  }) : super(key: key);

  @override
  _BoardWriteCategoryButtonState createState() => _BoardWriteCategoryButtonState();
}

class _BoardWriteCategoryButtonState extends State<BoardWriteCategoryButton> {
  List<String> categoryList = ["동네맛집", "동네질문", "동네소식", "생활정보", "취미생활"];

  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: smallGap),
                child: Text(
                  selectedCategory ?? '카테고리 선택',
                  style: TextStyle(fontSize: fontMedium),
                ),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BoardWriteSelectCategorySheet(
                        onCategorySelected: (category) {
                          setState(() {
                            selectedCategory = category;
                            _updateCategoryId(category);
                          });
                        },
                      );
                    },
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.chevronRight,
                  size: fontMedium,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 2,
          color: Colors.grey[200],
        )
      ],
    );
  }

  void _updateCategoryId(String selectedCategory) {
    int index = categoryList.indexOf(selectedCategory);
    if (index != -1) {
      // 선택한 카테고리가 리스트에 있을 경우
      Logger().d("이거는 뭐가 나와 ㅠㅠㅠ : ${index}");
      widget.categoryId!.value = index + 1;
      Logger().d("이거는 뭐가 나와 ㅠㅠㅠ : ${widget.categoryId!.value}");
    }
  }
}
