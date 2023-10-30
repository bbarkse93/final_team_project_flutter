import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_core.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_header.dart';
import 'package:team_project/ui/pages/product/detail_page/post_detail_view_model.dart';

class DetailProductBody extends ConsumerWidget {
  const DetailProductBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductDetailModel? model = ref.watch(productDetailProvider);

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      Product product = model.product; // ProductModel에서 Product 추출

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
