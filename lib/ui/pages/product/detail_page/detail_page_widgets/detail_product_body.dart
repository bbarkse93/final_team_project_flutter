import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/mock/product.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_header.dart';
import 'package:team_project/ui/pages/product/detail_page/post_detail_view_model.dart';

class DetailProductBody extends ConsumerWidget {
  const DetailProductBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductModel? model = ref.watch(productDetailProvider);

    Product product;

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return CustomScrollView(
        slivers: [
          DetailProductHeader(),
          DetailProductBody(),
        ],
      );
    }
  }
}
