import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/ui/pages/product/product_write_param_store.dart';

class DescriptionTextFormField extends StatelessWidget {
  const DescriptionTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ProductWriteParam model = ref.read(productParamProvider);
        return (TextFormField(
          onChanged: (value) {
            Logger().d("DescriptionTextFormField 위젯의 값이 ProductWriteParamStore로 가요! / content : ${value}");
            model.context = value;
          },
          maxLines: 5,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            hintText: "올릴 게시글 내용을 작성해주세요.",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ));
      },
    );
  }
}
