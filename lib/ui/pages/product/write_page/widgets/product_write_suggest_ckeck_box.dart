import 'package:flutter/material.dart';

class SuggestCheckBox extends StatelessWidget {
  const SuggestCheckBox({
    super.key,
    required this.isChecked,
  });

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            fillColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return Color.fromRGBO(255, 126, 0, 1);
              }
              return null;
            }),
            value: isChecked,
            onChanged: (value) {}),
        TextButton(
          onPressed: () {},
          child: Text(
            "가격 제안하기",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
