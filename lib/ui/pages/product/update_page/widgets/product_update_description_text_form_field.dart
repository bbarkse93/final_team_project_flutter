import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';

class UpdateDescriptionTextFormField extends ConsumerWidget {
  final controllerName;
  final funValidator;
  const UpdateDescriptionTextFormField({
    required this.funValidator,
    required this.controllerName,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 무적의 리버팟코드
    ProductListModel? productListModel = ref.watch(productListProvider);
    ParamStore paramStore = ref.read(paramProvider);
    List<Product> productList = productListModel!.productList;
    int productId = paramStore.productDetailId!;
    Product product = productList[productId];

    return TextFormField(
      controller: controllerName,
      validator: funValidator,
      onChanged: (value) {},
      maxLines: 5,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        hintText: "${product.productDescription}",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
