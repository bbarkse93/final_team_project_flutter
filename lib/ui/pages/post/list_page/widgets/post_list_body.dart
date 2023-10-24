import 'package:flutter/material.dart';
import 'package:team_project/data/model/post.dart';
import 'package:team_project/data/model/user.dart';
import 'package:team_project/ui/pages/post/list_page/widgets/post_list_item.dart';

class PostListBody extends StatelessWidget {
  const PostListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PostListModel? model = ref.watch(postListProvider);

    List<Post> posts = [
      Post(
        id: 1,
        title: "요기여기",
        content: "dkdn...",
        created: "wpqkf",
        price: 100000,
        updated: "wpqkfwkd..",
        commentCount: 3,
        heartCount: 5,
        user: User(
          id: 1,
          username: "ssar",
          password: "1234",
          userPicUrl: "ssar.jpg",
          location: "vikiniCity",
          created: "2023-10-23",
        ),
      ),
      Post(
        id: 1,
        title: "요기여기",
        content: "dkdn...",
        price: 100000,
        created: "wpqkf",
        updated: "wpqkfwkd..",
        commentCount: 4,
        heartCount: 5,
        user: User(
          id: 1,
          username: "ssar",
          password: "1234",
          userPicUrl: "ssar.jpg",
          location: "vikiniCity",
          created: "2023-10-23",
        ),
      ),
      Post(
        id: 1,
        title: "요기여기",
        content: "dkdn...",
        price: 100000,
        created: "wpqkf",
        updated: "wpqkfwkd..",
        commentCount: 3,
        heartCount: 5,
        user: User(
          id: 1,
          username: "ssar",
          password: "1234",
          userPicUrl: "ssar.jpg",
          location: "vikiniCity",
          created: "2023-10-23",
        ),
      ),
      Post(
        id: 1,
        title: "요기여기",
        content: "dkdn...",
        price: 100000,
        created: "wpqkf",
        updated: "wpqkfwkd..",
        commentCount: 3,
        heartCount: 5,
        user: User(
          id: 1,
          username: "ssar",
          password: "1234",
          userPicUrl: "ssar.jpg",
          location: "vikiniCity",
          created: "2023-10-23",
        ),
      ),
      Post(
        id: 1,
        title: "요기여기",
        content: "dkdn...",
        price: 100000,
        created: "wpqkf",
        updated: "wpqkfwkd..",
        commentCount: 3,
        heartCount: 5,
        user: User(
          id: 1,
          username: "ssar",
          password: "1234",
          userPicUrl: "ssar.jpg",
          location: "vikiniCity",
          created: "2023-10-23",
        ),
      ),
    ];

    // if (model != null) {
    //   posts = model.posts;
    // }

    return ListView.separated(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              // 1. postId를 paramStore 에 저장
              // ParamStore paramStore = ref.read(paramProvider);
              // paramStore.postDetailId = posts[index].id;

              // 2. 화면 이동
              // Navigator.push(context, MaterialPageRoute(builder: (_) => PostDetailPage()));
            },
            child: PostListItem(posts[index]));
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
