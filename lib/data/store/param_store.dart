import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/main.dart';

// 1. 창고 데이터
class RequestParam {
  int? productDetailId;
  RequestParam({this.productDetailId});
}

// 2. 창고 (비지니스 로직)
class ParamStore extends RequestParam {
  final mContext = navigatorKey.currentContext;
}

// 3. 창고 관리자
final paramProvider = Provider<ParamStore>((ref) {
  return ParamStore();
});
