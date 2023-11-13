import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/main_page.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_appbar_button.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_view_model.dart';

class DetailProductHeader extends ConsumerWidget {
  final Product product;

  DetailProductHeader(this.product);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(productDetailProvider(product.id));

    ParamStore param = ref.read(paramProvider);
    param.needChatProduct = product;

    return SliverAppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => MainPage()));
        },
      ),
      actions: [
        DetailAppbarButton(),
      ],
      expandedHeight: 300,
      flexibleSpace: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model?.product.productPics?.length,
        // itemCount: product.productPics?.length,
        itemBuilder: (context, index) {
          Logger().d(product.productPics?.length);
          return Image.network(
            // "http://172.20.10.3:8080/./images/드라이기_1e05f7c3-c2ae-4d2a-b07b-713971223de1.png",
            "${dio.options.baseUrl}/${model?.product.productPics?[index].productPicUrl}",
            // "${dio.options.baseUrl}/${product.productPics?[index].productPicUrl}",
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
