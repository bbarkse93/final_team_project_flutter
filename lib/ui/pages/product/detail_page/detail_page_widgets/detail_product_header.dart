import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_appbar_button.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';
import 'package:team_project/ui/widgets/photos/carousel_image.dart';

class DetailProductHeader extends ConsumerWidget {
  const DetailProductHeader({
    super.key,
  });

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

        return SliverAppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            DetailAppbarButton(),
          ],
          expandedHeight: 300,
          flexibleSpace: Container(child: CarouselImage(product: product)),
        );
      }
    }
    return Container();
  }
}
