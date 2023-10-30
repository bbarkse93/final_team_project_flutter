import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/detail_page/detail_page_widgets/detail_appbar_button.dart';
import 'package:team_project/ui/pages/product/detail_page/post_detail_view_model.dart';
import 'package:team_project/ui/widgets/photos/carousel_image.dart';

class DetailProductHeader extends ConsumerWidget {
  const DetailProductHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductDetailModel? model = ref.watch(productDetailProvider);

    Product product;
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }

    product = model.product;

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
