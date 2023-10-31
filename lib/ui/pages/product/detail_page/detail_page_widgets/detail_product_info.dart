import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_view_model.dart';

class DetailProductInfo extends ConsumerWidget {
  const DetailProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductDetailModel? model = ref.watch(productDetailProvider);
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _productName(productName: "${model.product.productName}"),
          SizedBox(height: smallGap),
          _productCategory(
              categoty: "${model.product.productName}",
              time: "${model.product.productCreatedAt}"),
          SizedBox(height: smallGap),
          // _productDescription(
          // productDescription: model.product.productDescription,
          // ),
        ],
      ),
    );
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
  const _productCategory(
      {super.key, required this.categoty, required this.time});

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
