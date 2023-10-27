// 1. 창고 데이터
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/data/dto/response_dto.dart';
import 'package:team_project/data/repository/post_repository.dart';
import 'package:team_project/main.dart';

class ProductWriteModel {
  final String? productName;
  final int? price;
  final String? description;
  final List<String>? photoList;

  ProductWriteModel({
    this.productName,
    this.price,
    this.description,
    this.photoList,
  });
}

// 2. 창고
class ProductWriteStore extends ProductWriteModel {
  // 1. 화면 context에 접근하는 법
  final mContext = navigatorKey.currentContext;

  Future<void> save(ProductWriteDTO productWriteDTO) async {
    // 1. 통신 코드
    ResponseDTO responseDTO = await PostRepository().fetchSave(productWriteDTO);

    // 2. 비지니스 로직
    if (responseDTO.success == true) {
      Navigator.pushNamed(mContext!, Move.postListPage);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text(responseDTO.error)));
    }
  }
}

// 3. 창고 관리자
final productWriteProvider = Provider<ProductWriteStore>((ref) {
  return ProductWriteStore();
});
