import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';

class CustomTextFormFieldNoVal extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final String? initValue; // 초기값 설정 할수 있음, 값이 없다면 공백을 처리 한다.

  const CustomTextFormFieldNoVal({
    Key? key,
    required this.hint,
    required this.controller,
    this.initValue = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (initValue != null) {
      controller.text = initValue!;
    }
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "Enter $hint",
        hintStyle: TextStyle(color: kHintColor),
        enabledBorder: OutlineInputBorder(
          // 3. 기본 TextFormField 디자인
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          // 4. 손가락 터치시 TextFormField 디자인
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          // 5. 에러발생시 TextFormField 디자인
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
