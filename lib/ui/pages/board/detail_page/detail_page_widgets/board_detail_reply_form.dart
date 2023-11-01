import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailReplyForm extends StatelessWidget {
  const BoardDetailReplyForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Icon(
            Icons.insert_photo_outlined,
            size: 30,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.location_on_outlined,
            size: 30,
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(224, 224, 224, 1),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(224, 224, 224, 1)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(224, 224, 224, 1)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                hintText: '댓글을 입력해 주세요',
                helperStyle: TextStyle(fontSize: 14, color: kHintColor),
                contentPadding: EdgeInsets.all(8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
