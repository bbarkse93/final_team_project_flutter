import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/repository/product_repository.dart';
import 'package:team_project/main.dart';

import '../../../../data/mock/product.dart';

// 1. 창고 데이터
class ProductModel {
  Product product;
  ProductModel(this.product);
}

// 2. 창고
class ProductDetailViewModel extends StateNotifier<ProductModel?> {
  ProductDetailViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit() async {
    print("통신 테스트1");
    Product product = await ProductRepository().fetchProductDetail();
    print("위치테스트2${product}");
    state = ProductModel(product);
  }
}

// 3. 창고 관리자
final productDetailProvider =
    StateNotifierProvider.autoDispose<ProductDetailViewModel, ProductModel?>(
        (ref) {
  return ProductDetailViewModel(null, ref)..notifyInit();
});
