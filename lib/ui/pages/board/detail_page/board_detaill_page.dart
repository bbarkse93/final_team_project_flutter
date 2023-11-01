import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardDetailPage extends StatelessWidget {
  const BoardDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            actions: [
              Icon(
                CupertinoIcons.bell_slash,
                color: Colors.black,
              ),
              SizedBox(
                width: smallGap,
              ),
              Icon(
                Icons.share_outlined,
                color: Colors.black,
              ),
              PopupMenuButton(
                color: Colors.black,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Column(
                        children: [
                          TextButton(
                              child: Text("수정하기",
                                  style: TextStyle(
                                      fontSize: fontMedium, color: kDarkColor)),
                              onPressed: () {}),
                          TextButton(
                              child: Text("삭제하기",
                                  style: TextStyle(
                                      fontSize: fontMedium, color: kDarkColor)),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                  ];
                },
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: defalutPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[300],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 70,
                              child: Row(
                                children: [
                                  Icon(Icons.library_books_sharp,
                                      size: fontSmall, color: Colors.black54),
                                  SizedBox(
                                    width: xsmallGap,
                                  ),
                                  Text("동네생활",
                                      style: TextStyle(
                                          fontSize: fontSmall,
                                          color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), // Category
                Container(
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text("얍얍"),
                    subtitle: Text("중동 인증 · 10시간 전"),
                  ),
                ), // UserProfile
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defalutPadding),
                    child: Text(
                      "미포 산책로 열리긴 했어요",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ), // title
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(defalutPadding),
                    child: Text(
                      "근데 저녁 산책은 못하겠네요 통행가능 시간이 있더라고요 불꽃놀이 때도 통제한다고 합니다",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ), // content
                Container(
                  padding: EdgeInsets.all(defalutPadding),
                  child: Center(
                    child: Image.network(
                      "https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI",
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                Divider(thickness: smallGap),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(defalutPadding),
                    child: Container(
                      padding: EdgeInsets.all(defalutPadding),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "안내 ",
                              style: TextStyle(
                                height: 2,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: "안전한 동네생활을 위해 부적절한 게시글은 알려주세요. ",
                              style: TextStyle(height: 2, color: Colors.black),
                            ),
                            TextSpan(
                              text: "신고하기",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defalutPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("댓글 0"),
                      Row(
                        children: [
                          Text("등록순"),
                          SizedBox(width: smallGap),
                          Text("최신순"),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: defalutPadding),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(),
                          title: Text("얍얍"),
                          subtitle: Text("중동 인증 · 10시간 전"),
                          trailing: Icon(Icons.more_vert),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 70, right: defalutPadding),
                          child: Text("올봄부터 공사하던데 ㅋ8월말이면 완공된다는 공사가 아직까지군요 ㅠㅠ"),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: defalutPadding),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(),
                          title: Text("얍얍"),
                          subtitle: Text("중동 인증 · 10시간 전"),
                          trailing: Icon(Icons.more_vert),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 70, right: defalutPadding),
                          child: Text("올봄부터 공사하던데 ㅋ8월말이면 완공된다는 공사가 아직까지군요 ㅠㅠ"),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(thickness: smallGap),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 65,
        child: Padding(
          padding: const EdgeInsets.all(defalutPadding),
          child: Row(
            children: [
              Icon(
                Icons.insert_photo_outlined,
                size: 30,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.location_on_outlined,
                size: 30,
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(224, 224, 224, 1),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(224, 224, 224, 1)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(224, 224, 224, 1)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    hintText: '댓글을 입력해 주세요',
                    helperStyle: TextStyle(fontSize: 14, color: kHintColor),
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
