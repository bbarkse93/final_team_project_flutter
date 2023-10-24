import 'package:team_project/data/model/user.dart';

class MockPost {
  final int? id;
  final String? productName;
  final int? price;
  final String? category;
  final String? content;
  final String? productPicUrl;
  final String? created;
  final User? user;
  MockPost({
    this.id,
    this.productName,
    this.price,
    this.category,
    this.content,
    this.productPicUrl,
    this.created,
    this.user,
  });
}
