import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_info.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_user_profile.dart';

class DetailProductCore extends ConsumerWidget {
  final Product product;

  DetailProductCore(this.product);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserProfile(
                  username: "${product.user?.nickname ?? "이름없음"}",
                  location: "${product.user?.location ?? "지역선택안함"}",
                ),
                DetailProductInfo(product),
              ],
            ),
          );
        },
        childCount: 1,
      ),
    );
  }
}
