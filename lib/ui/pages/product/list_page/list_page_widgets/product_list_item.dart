import 'package:flutter/material.dart';
import 'package:team_project/ui/pages/product/list_page/list_page_widgets/product_list_item_detail.dart';

import '../../../../../data/mock/product.dart';

class ProductListItem extends StatelessWidget {
  final Product product;

  const ProductListItem(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZLiGudoUsUt6WTpM1XBrSyob4g1m2WWAyhQ&usqp=CAU",
                width: 115,
                height: 115,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            ProductListItemDetail(product)
          ],
        ),
      ),
    );
  }
}
