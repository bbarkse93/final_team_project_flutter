import 'package:flutter/material.dart';

class ChoiceButton extends StatefulWidget {
  const ChoiceButton({super.key});

  @override
  State<ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {
  bool isSellected = true;
  bool isSellected2 = false;
  bool isTextFieldEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 95,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: isSellected ? Colors.black : Colors.white,
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              side: BorderSide(color: Colors.black, width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              "판매하기",
              style: TextStyle(
                color: isSellected ? Colors.white : Colors.black,
              ),
            ),
            onPressed: isSellected
                ? null
                : () {
                    setState(() {
                      isSellected = true;
                      isSellected2 = false;
                      isTextFieldEnabled = true;
                    });
                  },
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 95,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: isSellected2 ? Colors.black : Colors.white,
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              side: BorderSide(color: Colors.black, width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              "나눔하기",
              style: TextStyle(
                color: isSellected2 ? Colors.white : Colors.black,
              ),
            ),
            onPressed: isSellected2
                ? null
                : () {
                    setState(
                      () {
                        isSellected2 = true;
                        isSellected = false;
                        isTextFieldEnabled = isSellected2;
                      },
                    );
                  },
          ),
        ),
      ],
    );
  }
}
