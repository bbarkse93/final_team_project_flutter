import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/repository/product_repository.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/main.dart';

// 1. 창고 데이터
class ProductUpdateModel {
  Product product;
  ProductUpdateModel(this.product);
}

// 2. 창고
class ProductUpdateViewModel extends StateNotifier<ProductUpdateModel?> {
  ProductUpdateViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit(int id) async {
    ResponseDTO responseDTO = await ProductRepository().fetchProductDetail(id);

    state = ProductUpdateModel(responseDTO.response);
  }
}

// 3. 창고 관리자
final productUpdateProvider = StateNotifierProvider.autoDispose<ProductUpdateViewModel, ProductUpdateModel?>((ref) {
  int productId = ref.read(paramProvider).productDetailId!;
  return ProductUpdateViewModel(null, ref)..notifyInit(productId);
});
