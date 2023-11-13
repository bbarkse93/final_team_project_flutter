import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_core.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_header.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_view_model.dart';

class DetailProductBody extends ConsumerWidget {
  final Product product;

  DetailProductBody(this.product);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(productDetailProvider(product.id));
    if (model == null) {
      return SliverToBoxAdapter(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return CustomScrollView(
        slivers: [
          DetailProductHeader(product),
          DetailProductCore(product),
          // 다른 Sliver 위젯 추가
        ],
      );
    }
  }
}
