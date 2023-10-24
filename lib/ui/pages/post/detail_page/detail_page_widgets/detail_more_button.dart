import 'package:flutter/material.dart';

class DetailMoreButton extends StatelessWidget {
  const DetailMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: Column(
              children: [
                TextButton(
                    child: Text("수정하기",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    onPressed: () {}),
                TextButton(
                    child: Text("삭제하기",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    onPressed: () {}),
              ],
            ),
          ),
        ];
      },
    );
  }
}
