import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/write_page/write_page_widgets/board_write_select_cartegory_sheet.dart';

class BoardWriteCategoryButton extends StatefulWidget {
  const BoardWriteCategoryButton({Key? key}) : super(key: key);

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
}
