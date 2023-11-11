import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/http.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/main_page.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_appbar_button.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_view_model.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_page.dart';
import 'package:team_project/ui/widgets/photos/carousel_image.dart';

class DetailProductHeader extends ConsumerWidget {
  final Product product;

  DetailProductHeader(this.product);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(productDetailProvider(product.id));

    //Todo: 사진 나오기 전에 x 잠시 나오는 부분 수정 해야함
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
        itemBuilder: (context, index) {
          Logger().d(product.productPics?.length);
          return Image.network(
            "${dio.options.baseUrl}/${model?.product.productPics?[index].productPicUrl}",
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
