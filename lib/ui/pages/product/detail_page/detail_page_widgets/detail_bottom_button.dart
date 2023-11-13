import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/data/store/session_store.dart';
import 'package:team_project/ui/pages/chatting/list_page/chatting_list_page.dart';
import 'package:team_project/ui/pages/chatting/list_page/chatting_list_view_model.dart';
import 'package:team_project/ui/pages/product/detail_page/product_detail_view_model.dart';

class DetailBottomButton extends StatefulWidget {
  const DetailBottomButton({super.key});

  @override
  State<DetailBottomButton> createState() => _DetailBottomButtonState();
}

class _DetailBottomButtonState extends State<DetailBottomButton> {
  bool isHearted = false;

  void toggleHeart() {
    setState(() {
      isHearted = !isHearted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kCarrotColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Consumer(
                builder: (context, ref, child) {
                  return (TextButton(
                    child: Text("채팅 하기", style: TextStyle(fontSize: fontLarge, color: Colors.white)),
                    onPressed: () {
                      // 현재 로그인 한 유저의 정보
                      SessionUser sessionUser = ref.read(sessionProvider);

                      // 추가되는 채팅방의 데이터베이스 이름을 설정하기위한 리버팟 - Product - productName
                      ParamStore paramStore = ref.read(paramProvider);
                      Product? product = paramStore.needChatProduct;

                      var chatProduct = ref.watch(productDetailProvider(product!.id));

                      if (chatProduct != null && chatProduct.product.user != null) {
                        Logger().d("${chatProduct.product.user!.id}");
                        Logger().d("${chatProduct.product.user!.nickname}");
                        Logger().d("${chatProduct.product.user!.location}");
                        Logger().d("${chatProduct.product.user!.username}");
                        Logger().d("${chatProduct.product.user!.email}");
                        Logger().d("${chatProduct.product.user!.userPicUrl}");
                      }

                      if (product != null)
                        // 상품 -> 채팅하기 클릭 시 로직
                        ref.watch(chatListProvider.notifier).notifyAdd(sessionUser, chatProduct!.product);

                      Navigator.push(context, MaterialPageRoute(builder: (_) => ChattingListPage()));
                    },
                  ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
