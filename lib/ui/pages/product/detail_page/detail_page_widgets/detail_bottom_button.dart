import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class DetailBottomButton extends StatefulWidget {
  const DetailBottomButton({super.key});

  @override
  State<DetailBottomButton> createState() => _DetailBottomButtonState();
}

class _DetailBottomButtonState extends State<DetailBottomButton> {
  bool isHearted = false;

  void toggleHeart() {
    setState(() {
      isHearted = !isHearted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, top: 14, bottom: 14, right: 16),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
                isHearted ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                color: isHearted ? Colors.red : null),
            onPressed: () {
              toggleHeart();
            },
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kCarrotColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                child: Text("채팅 하기",
                    style: TextStyle(fontSize: fontLarge, color: Colors.white)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
