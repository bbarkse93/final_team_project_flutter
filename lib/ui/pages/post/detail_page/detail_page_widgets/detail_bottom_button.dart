import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
                color: Color.fromRGBO(255, 126, 00, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                child: Text("채팅 하기",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
