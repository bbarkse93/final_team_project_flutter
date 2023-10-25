import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/mock/post.dart';
import 'package:team_project/ui/pages/post/detail_page/post_detail_view_model.dart';

class DetailProductInfo extends ConsumerWidget {
  const DetailProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PostModel? model = ref.watch(postDetailProvider);
    if (model == null) {
      return Center(child: CircularProgressIndicator());
    }
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _productName(productName: "${post.productName}"),
          SizedBox(height: smallGap),
          _productCategory(
              categoty: "${post.category}", time: "${post.created}"),
          SizedBox(height: smallGap),
          _productDescription(
            productDescription: post.content,
          ),
        ],
      ),
    );
  }
}

class _productName extends StatelessWidget {
  final String productName;
  const _productName({
    super.key,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${productName}",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _productCategory extends StatelessWidget {
  final String categoty;
  final String time;
  const _productCategory(
      {super.key, required this.categoty, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${categoty} • ${time}",
        style: TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}

class _productDescription extends StatelessWidget {
  final String productDescription;
  const _productDescription({super.key, required this.productDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${productDescription}"),
    );
  }
}
