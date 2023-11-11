import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_page.dart';
import 'package:team_project/ui/pages/product/list_page/list_page_widgets/product_list_item.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';

class ProductListBody extends ConsumerWidget {
  const ProductListBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WidgetRef - 통신을하겠다라는 의미임, 정확히는 창고관리자에게 접근하겠다.
    ProductListModel? model = ref.watch(productListProvider);
    List<Product> productList = [];

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      productList = model.productList;
      return ListView.separated(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                // 1. postId를 paramStore 에 저장
                ParamStore paramStore = ref.read(paramProvider);
                paramStore.productDetailId = productList[index].id - 1;

                // TODO tip - product 통쨰로 넣는다면 ?
                paramStore.product = productList[index];

                // 2. 화면 이동
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailPage(productList[index])));
              },
              child: ProductListItem(productList[index]));
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      );
    }
  }
}
