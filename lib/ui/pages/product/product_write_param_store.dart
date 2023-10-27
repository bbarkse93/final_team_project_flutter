// 1. 창고 데이터
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/main.dart';

class ProductWriteParam {
  List<String>? photoList;
  String? productName;
  int? price;
  String? context;

  ProductWriteParam({this.photoList, this.productName, this.price, this.context});
}

// 2. 창고
class ProductWriteParamStore extends ProductWriteParam {
  final mContext = navigatorKey.currentContext;

  Future<void> save() async {
    print("통신 시작");
  }
}

// 3. 창고 관리자
final productParamProvider = Provider<ProductWriteParamStore>((ref) {
  return ProductWriteParamStore();
});
