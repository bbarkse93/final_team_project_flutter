import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';

class DetailProductInfo extends ConsumerWidget {
  const DetailProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductListModel? productListModel = ref.watch(productListProvider);
    ParamStore paramStore = ref.read(paramProvider);

    List<Product> productList = productListModel!.productList; // ProductModel에서 Product 추출

    if (paramStore.productDetailId != null) {
      int productId = paramStore.productDetailId!;
      Product product = productList[productId];

      return Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _productName(productName: "${product.productName}"),
            SizedBox(height: smallGap),
            _productCategory(categoty: "${product.productName}", time: "${product.productCreatedAt}"),
            SizedBox(height: smallGap),
            // _productDescription(
            // productDescription: model.product.productDescription,
            // ),
          ],
        ),
      );
    }
    return Container();
  }
}

class _productName extends StatelessWidget {
  final String productName;
  const _productName({
    super.key,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${productName}",
        style: TextStyle(fontSize: fontLarge, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _productCategory extends StatelessWidget {
  final String categoty;
  final String time;
  const _productCategory({super.key, required this.categoty, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${categoty} • ${time}",
        style: TextStyle(fontSize: fontSmall, color: kHintColor),
      ),
    );
  }
}

class _productDescription extends StatelessWidget {
  final String productDescription;
  const _productDescription({super.key, required this.productDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${productDescription}"),
    );
  }
}
