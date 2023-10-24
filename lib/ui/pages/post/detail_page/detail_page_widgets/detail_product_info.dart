import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class DetailProductInfo extends StatelessWidget {
  const DetailProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _productName(productName: "제품명"),
        SizedBox(height: smallGap),
        _productCategory(categoty: "제품카테고리", time: "몇시간전"),
        SizedBox(height: smallGap),
        _productDescription(
            productDescription:
                "이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야이 제품은 이런 제품이야"),
      ],
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
