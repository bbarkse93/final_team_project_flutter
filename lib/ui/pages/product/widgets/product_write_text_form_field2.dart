import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/ui/pages/product/product_write_param_store.dart';

class WriteTextFormField2 extends StatelessWidget {
  final hintText;
  const WriteTextFormField2({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Consumer(
        builder: (context, ref, child) {
          ProductWriteParam model = ref.read(productParamProvider);
          return (TextFormField(
            // TODO: Controller말고 onChanged로 입력값 받는 연습
            onChanged: (value) {
              int intValue = int.parse(value);
              print(value);
              model.price = intValue;
              Logger().d("WriteTextFormField2 위젯의 값이 ProductWriteParamStore로 가요! / productName : ${intValue}");
            },
            decoration: InputDecoration(
              hintText: "$hintText",
              hintStyle: TextStyle(fontSize: 15),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ));
        },
      ),
    );
  }
}
