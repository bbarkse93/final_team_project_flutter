import 'package:flutter/material.dart';

class UpdateDescriptionTextFormField extends StatelessWidget {
  final controllerName;
  final funValidator;
  const UpdateDescriptionTextFormField({
    required this.funValidator,
    required this.controllerName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerName,
      validator: funValidator,
      onChanged: (value) {},
      maxLines: 5,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        hintText: "올릴 게시글 내용을 작성해주세요.",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
