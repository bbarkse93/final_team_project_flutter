import 'package:flutter/material.dart';

enum SellOrDonate { sell, donate }

class ChoiceButton extends StatefulWidget {
  const ChoiceButton({super.key});

  @override
  State<ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {
  bool isSellected = true;
  bool isSellected2 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: isSellected ? Colors.orange : Colors.white,
                textStyle: const TextStyle(fontSize: 16),
                side: BorderSide(color: Colors.orange, width: 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Text("판매하기",
                style: TextStyle(
                    color: isSellected ? Colors.white : Colors.black)),
            onPressed: () {
              setState(() {
                isSellected = !isSellected;
                isSellected2 = !isSellected;
              });
            },
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 80,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: isSellected2 ? Colors.orange : Colors.white,
              textStyle: const TextStyle(fontSize: 16),
              side: BorderSide(color: Colors.orange, width: 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: Text("나눔하기",
                style: TextStyle(
                    color: isSellected2 ? Colors.white : Colors.black)),
            onPressed: () {
              setState(() {
                isSellected2 = !isSellected2;
                isSellected = !isSellected;
              });
            },
          ),
        ),
      ],
    );
  }
}
