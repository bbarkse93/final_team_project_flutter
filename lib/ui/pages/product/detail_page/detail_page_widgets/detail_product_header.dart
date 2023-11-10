import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_appbar_button.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_view_model.dart';
import 'package:team_project/ui/widgets/photos/carousel_image.dart';

class DetailProductHeader extends ConsumerWidget {
  final Product product;

  DetailProductHeader(this.product);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(productDetailProvider(product.id));

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
      flexibleSpace: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: model?.product.productPics?.length,
        itemBuilder: (context, index) {
          Logger().d(product.productPics?.length);
          return Image.network(
            // "http://192.168.0.39:8080/./images/드라이기_1e05f7c3-c2ae-4d2a-b07b-713971223de1.png",
            "http://192.168.0.39:8080/${model?.product.productPics?[index].productPicUrl}",
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
