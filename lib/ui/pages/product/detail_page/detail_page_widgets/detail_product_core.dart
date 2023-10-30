import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_info.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_user_profile.dart';
import 'package:team_project/ui/pages/product/detail_page/post_detail_view_model.dart';

class DetailProductCore extends ConsumerWidget {
  const DetailProductCore({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductDetailModel? model = ref.watch(productDetailProvider);

    Product product;
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            product = model.product;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserProfile(
                    username: "${product.user.username}",
                    location: "${product.user.location}",
                  ),
                  DetailProductInfo(),
                ],
              ),
            );
          },
          childCount: 1,
        ),
      );
    }
  }
}
