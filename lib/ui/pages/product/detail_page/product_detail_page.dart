import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_bottom_button.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_body.dart';

class ProductDetailPage extends ConsumerWidget {
  final Product product;

  ProductDetailPage(this.product);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // int? clickedProductDetailId =
    //     ref.watch(productDetailProvider).productDetailId;
    //
    // ProductListModel? productListModel = ref.watch(productListProvider);
    //
    // Product product = productListModel!.productList[clickedProductDetailId!];

    return Scaffold(
      body: DetailProductBody(product),
      bottomNavigationBar: DetailBottomButton(),
    );
  }
}
