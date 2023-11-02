import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/ui/pages/product/update_page/widgets/product_update_body.dart';

class ProductUpdatePage extends StatelessWidget {
  const ProductUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return (Scaffold(
          appBar: AppBar(
            title: Text("내 물건 팔기", style: TextStyle(color: Colors.white)),
          ),
          body: ProductUpdateBody(),
        ));
      },
    );
  }
}
