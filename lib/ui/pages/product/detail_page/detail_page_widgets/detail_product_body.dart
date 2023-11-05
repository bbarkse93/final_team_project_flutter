import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_core.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_header.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';

class DetailProductBody extends ConsumerWidget {
  const DetailProductBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductListModel? productListModel = ref.watch(productListProvider);
    ParamStore paramStore = ref.read(paramProvider);

    if (productListModel == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      List<Product> productList = productListModel.productList; // ProductModel에서 Product 추출

      if (paramStore.productDetailId != null) {
        int productId = paramStore.productDetailId!;
        Product product = productList[productId];
      }

      return CustomScrollView(
        slivers: [
          DetailProductHeader(),
          DetailProductCore(),
          // 다른 Sliver 위젯 추가
        ],
      );
    }
  }
}
