import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_product_info.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_user_profile.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';

class DetailProductCore extends ConsumerWidget {
  const DetailProductCore({super.key});

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
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserProfile(
                      username: "${product.user?.username ?? "이름없음"}",
                      location: "${product.user?.location ?? "지역선택안함"}",
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
    return Container();
  }
}
