import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardListCategory extends StatelessWidget {
  final String category;
  const BoardListCategory({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.grey[400],
      ),
      padding: EdgeInsets.all(3),
      child: Text("${category}", style: TextStyle(fontSize: fontSmall)),
    );
  }
}
