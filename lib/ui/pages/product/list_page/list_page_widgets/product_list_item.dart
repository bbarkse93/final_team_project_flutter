import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/list_page/list_page_widgets/product_list_item_detail.dart';

class ProductListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ParamStore paramStore = ref.read(paramProvider);
        Product? product = paramStore.product!;

        Widget buildProductImage() {
          if (product.productPics != null && product.productPics!.isNotEmpty) {
            return Image.network(
              "${dio.options.baseUrl}/${product.productPics?[0].productPicUrl}",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            );
          } else {
            return Container(
              // "https://picsum.photos/200/300",
              // fit: BoxFit.cover,
              color: Colors.transparent,
              width: 80,
              height: 80,
            );
          }
        }

        return Container(
          height: 135,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: buildProductImage(), // 위에서 만든 함수 사용
                ),
                const SizedBox(width: 16.0),
                Expanded(child: ProductListItemDetail(product))
              ],
            ),
          ),
        );
      },
    );
  }
}
