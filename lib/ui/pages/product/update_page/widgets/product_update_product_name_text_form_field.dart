import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';

class UpdateProductNameTextFormField extends StatelessWidget {
  final controllerName;
  final funValidator;

  const UpdateProductNameTextFormField({
    required this.funValidator,
    required this.controllerName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Consumer(
        builder: (context, ref, child) {
          // 무적의 리버팟코드
          ProductListModel? productListModel = ref.watch(productListProvider);
          ParamStore paramStore = ref.read(paramProvider);
          List<Product> productList = productListModel!.productList;
          int productId = paramStore.productDetailId!;
          Product product = productList[productId];

          return (TextFormField(
            controller: controllerName,
            obscureText: false,
            validator: funValidator,
            decoration: InputDecoration(
              hintText: "${product.productName}",
              hintStyle: TextStyle(fontSize: 15),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ));
        },
      ),
    );
  }
}
