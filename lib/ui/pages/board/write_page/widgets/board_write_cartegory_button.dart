import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/board/write_page/widgets/board_write_select_cartegory_sheet.dart';

class BoardWriteCategoryButton extends StatelessWidget {
  const BoardWriteCategoryButton({
    super.key,
  });

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
                  "일상",
                  style: TextStyle(fontSize: fontMedium),
                ),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return BoardWriteSelectCategorySheet();
                      });
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
