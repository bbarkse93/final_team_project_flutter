import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/store/param_store.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';
import 'package:team_project/ui/pages/product/update_page/product_update_page.dart';

class DetailAppbarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(icon: Icon(Icons.ios_share), onPressed: () {}),
        PopupMenuButton(
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Consumer(
                  builder: (context, ref, child) {
                    ParamStore param = ref.read(paramProvider);
                    return (Column(
                      children: [
                        TextButton(
                            child: Text("수정하기", style: TextStyle(fontSize: fontMedium, color: kDarkColor)),
                            onPressed: () {
                              // 2. 화면 이동
                              Navigator.push(context, MaterialPageRoute(builder: (_) => ProductUpdatePage()));
                            }),
                        TextButton(
                          child: const Text(
                            '삭제하기',
                            style: TextStyle(color: kDarkColor, fontSize: fontMedium),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: const Text('정말로 삭제하시겠어요?'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'Cancel'),
                                      child: const Text('취소', style: TextStyle(color: kDarkColor, fontSize: fontMedium)),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        ref.read(productListProvider.notifier).notifyRemove(param.product!.id);
                                        Navigator.pop(context, 'OK');
                                      },
                                      child: const Text('삭제하기', style: TextStyle(color: kDarkColor, fontSize: fontMedium)),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ));
                  },
                ),
              ),
            ];
          },
        ),
      ],
    );
  }
}
