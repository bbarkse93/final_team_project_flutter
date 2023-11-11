import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/list_page/list_page_widgets/product_list_item_detail.dart';

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
                "${dio.options.baseUrl}/${product.productPics?[0].productPicUrl}",
                width: 115,
                height: 115,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(child: ProductListItemDetail(product))
          ],
        ),
      ),
    );
  }
}
