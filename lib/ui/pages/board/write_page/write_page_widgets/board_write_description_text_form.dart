import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardWriteDescriptionTextForm extends StatelessWidget {
  final hint;
  final controllerName;
  final funValidator;
  const BoardWriteDescriptionTextForm({
    required this.hint,
    required this.funValidator,
    required this.controllerName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: TextFormField(
        controller: controllerName,
        validator: funValidator,
        maxLines: 5,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: xsmallGap, left: smallGap),
          hintText: "${hint}",
          hintStyle: TextStyle(color: Colors.grey[500]),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
