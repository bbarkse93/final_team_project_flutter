import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardWriteSelectCategorySheet extends StatelessWidget {
  const BoardWriteSelectCategorySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return (Container(
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
                    // TODO - form 에다가 데이터 올려주면 됨 ValueNotifier 사용할것을 추천!
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    FontAwesomeIcons.chevronRight,
                    size: fontMedium,
                  ),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
