import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_bottom_button.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_body.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';

class ProductDetailPage extends ConsumerWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int? clickedProductDetailId = ref.read(paramProvider).productDetailId;

    ProductListModel? productListModel = ref.watch(productListProvider);

    Product product = productListModel!.productList[clickedProductDetailId!];

    return Scaffold(
      body: DetailProductBody(product),
      bottomNavigationBar: DetailBottomButton(),
    );
  }
}
