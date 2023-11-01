import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailReplyReport extends StatelessWidget {
  const BoardDetailReplyReport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "안내 ",
                  style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "안전한 동네생활을 위해 부적절한 게시글은 알려주세요. ",
                  style: TextStyle(height: 2, color: Colors.black),
                ),
                TextSpan(
                  text: "신고하기",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
