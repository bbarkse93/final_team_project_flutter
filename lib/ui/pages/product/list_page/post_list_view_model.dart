// 1. 창고 데이터
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/repository/product_repository.dart';
import 'package:team_project/main.dart';

import '../../../../data/mock/product.dart';

// 1. 창고 데이터
class ProductListModel {
  List<Product> productList;
  ProductListModel(this.productList);
}

// 2. 창고
class ProductListViewModel extends StateNotifier<ProductListModel?> {
  ProductListViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit() async {
    print("통신 시작");
    List<Product> postList = await ProductRepository().fetchProductList();
    print("통신 끝 ${postList.length}");
    state = ProductListModel(postList);
  }
}

// 3. 창고 관리자
final productListProvider =
    StateNotifierProvider.autoDispose<ProductListViewModel, ProductListModel?>(
        (ref) {
  return ProductListViewModel(null, ref)..notifyInit();
});
