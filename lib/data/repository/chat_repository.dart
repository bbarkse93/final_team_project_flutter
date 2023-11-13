import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:team_project/data/model/chat_room.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/session_store.dart';

import '../model/chat.dart';

class ChatRepository {
  // 통신
  Stream<List<ChatRoom>> fetchChatList() {
    Logger().d("이거먼저 실행되구 그다음 세이브로 넘어가지 ? ");
    final db = FirebaseFirestore.instance;

    Stream<QuerySnapshot<Map<String, dynamic>>> stream = db.collection("chat1").snapshots();

    return stream.map((snapshot) {
      return snapshot.docs.map((e) {
        Logger().d("e.data : ${e.data()}");
        return ChatRoom.fromJson(e.data());
      }).toList();
    });
  }

  Stream<List<ChatRoom>> fetchCreate(SessionUser sessionUser, Product product) {
    Logger().d("채팅방 만들기 repository 로 넘어옴");

    // Firestore 인스턴스 초기화
    final db = FirebaseFirestore.instance;

    // 문서를 생성
    final DocumentReference docRef = db.collection('chat1').doc("chat${product.id}${product.id}");

    //로고 테스팅
    Logger().d("ChatRepository 영역 / product.id- ${product.id}");
    Logger().d("ChatRepository 영역 / product.user!.id - ${product.user!.id}");
    Logger().d("ChatRepository 영역 / product.user!.nickname - ${product.user!.nickname}");
    Logger().d("ChatRepository 영역 / product.user!.userPicUrl - ${product.user!.userPicUrl}");
    Logger().d("ChatRepository 영역 / sessionUser.user!.userPicUrl - ${sessionUser.user!.userPicUrl}");
    Logger().d("ChatRepository 영역 / sessionUser.user!.id- ${sessionUser.user!.id}");
    Logger().d("ChatRepository 영역 / sessionUser.user!.nickname - ${sessionUser.user!.nickname}");

    docRef.set({
      'ChatRoom': {
        'productId': product.id,
        'productName': product.productName,
        'sellerId': product.user!.id,
        'sellerNickname': product.user!.nickname,
        'sellerUserPicUrl': product.user!.userPicUrl,
        'buyUserPicUrl': sessionUser.user!.userPicUrl,
        'buyerId': sessionUser.user!.id,
        'buyerNickName': sessionUser.user!.nickname,
        // 필요한 다른 필드 추가
      }
    }).catchError((error) {
      Logger().d(" 다음과 같은 에러가 발생했습니다. 확인바랍니다 : ${error}");
    });
    Logger().d("여기는 오ㅏ? fetchCreate 중간");
    // 데이터를 추가하려는 컬렉션 및 문서 경로
    final Stream<DocumentSnapshot<Map<String, dynamic>>> stream = db
        .collection('chat1')
        .doc(
          "chat" + "${product.id}" + "${product.id}",
        )
        .snapshots();

    return stream.map((snapshot) {
      Logger().d("snapshot.data() 이거는 뜨나 ?: ${snapshot.data()}");
      final chatRoom = ChatRoom.fromJson(snapshot.data() as Map<String, dynamic>);
      Logger().d("${chatRoom.toString()}");
      Logger().d("chatRoom.buyerUserPicUrl : ${chatRoom.buyerUserPicUrl}");
      return [chatRoom];
    });
  }

// 채팅방안에서의 필요한 통신 코드
  Stream<List<Chat>> streamChat(int productId) {
    Logger().d("여기로 들어옴 streamChat");
    final db = FirebaseFirestore.instance;

    String productIdStringType = productId.toString();
    Logger().d("chat11 : chat${productIdStringType + productIdStringType}");

    Stream<QuerySnapshot<Map<String, dynamic>>> stream = db
        .collection("chat1")
        .doc("chat${productIdStringType + productIdStringType}")
        .collection("chat${productIdStringType + productIdStringType}")
        .orderBy("time", descending: true)
        .snapshots();

    stream.listen((QuerySnapshot<Map<String, dynamic>> snapshot) {
      Logger().d("Stream has new data!");
      for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
        try {
          Logger().d("Document Data: ${doc.data()}");
          // 데이터 처리 코드
        } catch (e) {
          Logger().e("Error while processing document: $e");
        }
      }
    });

    return stream.map((snapshot) => snapshot.docs.map((doc) {
          Logger().d("doc.data : ${doc.data()}");
          return Chat.fromJson(doc.data());
        }).toList());
  }

  Future<void> insert(Chat chat, int productId) async {
    String productIdStringType = productId.toString();
    Logger().d("chat11 : chat${productIdStringType + productIdStringType}");

    final db = FirebaseFirestore.instance;
    final documentReference = await db
        .collection("chat1")
        .doc("chat${productIdStringType + productIdStringType}")
        .collection("chat${productIdStringType + productIdStringType}")
        .add(chat.toJson());

    // 데이터가 성공적으로 추가되었다면 documentReference는 새로 생성된 문서를 나타냅니다.
    if (documentReference.id.isNotEmpty) {
      print("Data added successfully. Document ID: ${documentReference.id}");
    } else {
      print("Data addition failed.");
    }
  }
}
