import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/product_wirte_widgets/product_write_body.dart';

class WriteFormProductName extends StatelessWidget {
  const WriteFormProductName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: mediumGap),
        ProductInfoLabel(text: "상품명"),
        SizedBox(height: smallGap),
        ProductInfoWriteField(text: "상품명을 입력하세요"),
        SizedBox(height: mediumGap),
      ],
    );
  }
}
