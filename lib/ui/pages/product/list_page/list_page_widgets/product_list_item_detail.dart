import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/data/mock/product.dart';
import 'package:team_project/ui/pages/product/list_page/list_page_widgets/product_list_comment_icons.dart';

import '../../../../../_core/constants/size.dart';

class ProductListItemDetail extends StatelessWidget {
  final Product product;

  const ProductListItemDetail(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${product.productName}",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: fontMedium,
                color: kDarkColor),
          ),
          const SizedBox(height: 4.0),
          Text("${product.content}", style: TextStyle(color: kHintColor)),
          const SizedBox(height: 4.0),
          Text(
            "${numberFormat(product.price)}원",
            style: TextStyle(fontSize: fontXlarge, color: Colors.black),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: product.commentCount > 0,
                child: ProductListCommentIcons(
                  CupertinoIcons.chat_bubble_2,
                  product.commentCount,
                ),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.heartCount > 0,
                child: ProductListCommentIcons(
                  CupertinoIcons.heart_fill,
                  product.commentCount,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

String numberFormat(int price) {
  final formatter = NumberFormat("#,###");
  return formatter.format(price);
}
