import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/repository/product_repository.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/main.dart';

// 1. 창고 데이터
class ProductDetailModel {
  Product product;
  ProductDetailModel(this.product);
}

// 2. 창고
class ProductDetailViewModel extends StateNotifier<ProductDetailModel?> {
  ProductDetailViewModel(super._state, this.ref);

  final mContext = navigatorKey.currentContext;
  Ref ref;

  Future<void> notifyInit(int id) async {
    Logger().d("통신 코드로 넘어왔어요!");
    Logger().d("id : ${id}");
    ResponseDTO responseDTO = await ProductRepository().fetchProductDetail(id);

    state = ProductDetailModel(responseDTO.response);
  }
}

// 3. 창고 관리자
final productDetailProvider = StateNotifierProvider.autoDispose<ProductDetailViewModel, ProductDetailModel?>((ref) {
  int productId = ref.read(paramProvider).productDetailId!;
  return ProductDetailViewModel(null, ref)..notifyInit(productId);
});
