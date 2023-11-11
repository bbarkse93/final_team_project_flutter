import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/move.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/my_carrot/my_carrot_page/my_carrot_view_model.dart';

class MyCarrotInfo extends ConsumerWidget {
  final String nickname;
  final String imageUrl;
  const MyCarrotInfo({
    super.key,
    required this.nickname,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.read(myCarrotProviderProvider);
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: (NetworkImage(imageUrl)),
        ),
        title: Text(
          nickname,
          style: TextStyle(fontSize: fontLarge, fontWeight: FontWeight.bold),
        ),
        trailing: Container(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.grey[300]),
            child: TextButton(
              child: Text(
                "프로필 수정",
                style: TextStyle(fontSize: fontMedium, color: Colors.black),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Move.myProfilePage);
              },
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
