import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/update_page/product_update_page.dart';

class DetailAppbarButton extends StatelessWidget {
  const DetailAppbarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(icon: Icon(Icons.ios_share), onPressed: () {}),
        PopupMenuButton(
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Column(
                  children: [
                    TextButton(
                        child: Text("수정하기", style: TextStyle(fontSize: fontMedium, color: kDarkColor)),
                        onPressed: () {
                          // 2. 화면 이동
                          Navigator.push(context, MaterialPageRoute(builder: (_) => ProductUpdatePage()));
                        }),
                    TextButton(child: Text("삭제하기", style: TextStyle(fontSize: fontMedium, color: kDarkColor)), onPressed: () {}),
                  ],
                ),
              ),
            ];
          },
        ),
      ],
    );
  }
}
