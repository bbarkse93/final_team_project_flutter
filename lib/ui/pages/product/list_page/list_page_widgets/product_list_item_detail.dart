import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/list_page/list_page_widgets/product_list_comment_icons.dart';

import '../../../../../_core/constants/size.dart';

class ProductListItemDetail extends StatelessWidget {
  final Product product;

  const ProductListItemDetail(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${product.productName}",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: fontMedium, color: kDarkColor),
        ),
        const SizedBox(height: 4.0),
        Text("${product.productName}", style: TextStyle(color: kHintColor)),
        const SizedBox(height: 4.0),
        Text(
          "${numberFormat(product.productPrice)}원",
          style: TextStyle(fontSize: fontXlarge, color: Colors.black),
        ),
        const Spacer(),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          if (product.productComment != null && product.productComment! > 0)
            ProductListCommentIcons(
              CupertinoIcons.chat_bubble_2,
              product.productComment!,
            ),
          const SizedBox(width: 8.0),
          if (product.productLike != null && product.productLike! > 0)
            ProductListCommentIcons(
              CupertinoIcons.heart_fill,
              product.productLike!,
            ),
        ]),
      ],
    );
  }
}

String numberFormat(int price) {
  final formatter = NumberFormat("#,###");
  return formatter.format(price);
}
