import 'package:flutter/material.dart';

class DetailBottomButton extends StatelessWidget {
  const DetailBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
    );
  }
}
