import 'package:logger/logger.dart';

class ChatRoom {
  // 채팅방 아이디
  int? id;

  // 상품아이디
  int? productId;

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
    this.sellerId,
    this.buyerId,
    this.sellerNickname,
    this.sellerUserPicUrl,
    this.buyerNickName,
    this.buyerUserPicUrl,
  });

  ChatRoom.fromJson(Map<String, dynamic> json)
      : productId = json["ChatRoom"]["productId"],
        sellerId = json["ChatRoom"]["sellerId"],
        buyerId = json["ChatRoom"]["buyerId"],
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
