import 'package:logger/logger.dart';
import 'package:team_project/data/model/product.dart';

class ChatRoom {
  // 채팅방 아이디
  int? id;

  // 상품아이디
  int? productId;
  String? productName;
  Product? product;

  // 판매자 아이디
  int? sellerId;

  // 구매자 아이디
  int? buyerId;

  // 판매자 정보
  String? sellerNickname;
  String? sellerUserPicUrl;

  // 구매자 정보
  String? buyerNickName;
  String? buyerUserPicUrl;

  ChatRoom({
    this.id,
    this.productId,
    this.productName,
    this.sellerId,
    this.buyerId,
    this.sellerNickname,
    this.sellerUserPicUrl,
    this.buyerNickName,
    this.buyerUserPicUrl,
    this.product,
  });

  ChatRoom.fromJson(Map<String, dynamic> json)
      : productId = json["ChatRoom"]["productId"],
        product = json["ChatRoom"]["product"],
        sellerId = json["ChatRoom"]["sellerId"],
        buyerId = json["ChatRoom"]["buyerId"],
        productName = json["ChatRoom"]["productName"],
        sellerNickname = json["ChatRoom"]["sellerNickname"],
        sellerUserPicUrl = json["ChatRoom"]["sellerUserPicUrl"],
        buyerNickName = json["ChatRoom"]["buyerNickName"],
        buyerUserPicUrl = json["ChatRoom"]["buyUserPicUrl"] {
    Logger().d("productId : $productId");
    Logger().d("sellerId : $sellerId");
    Logger().d("buyerId : $buyerId");
    Logger().d("sellerNickname : $sellerNickname");
    Logger().d("sellerUserPicUrl : $sellerUserPicUrl");
    Logger().d("buyerNickName : $buyerNickName");
    Logger().d("buyerUserPicUrl : $buyerUserPicUrl");
  }
}
