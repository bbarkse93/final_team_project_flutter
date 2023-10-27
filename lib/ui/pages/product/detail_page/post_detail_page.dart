import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_bottom_button.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_body.dart';
import 'package:team_project/ui/pages/product/detail_page/post_detail_view_model.dart';

class ProductDetailPage extends ConsumerWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: RefreshIndicator(
        child: DetailProductBody(),
        onRefresh: () async {
          ref.read(productDetailProvider.notifier).notifyInit();
        },
      ),
      bottomNavigationBar: DetailBottomButton(),
    );
  }
}
