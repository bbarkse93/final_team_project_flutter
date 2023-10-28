import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardListCategory extends StatelessWidget {
  const BoardListCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.grey[400],
      ),
      padding: EdgeInsets.all(3),
      child: Text("동네맛집", style: TextStyle(fontSize: fontSmall)),
    );
  }
}
