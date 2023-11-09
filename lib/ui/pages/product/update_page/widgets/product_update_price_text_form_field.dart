import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/data/store/param_store.dart';

class UpdatePriceTextFormField extends StatelessWidget {
  final controllerName;
  final funValidator;

  const UpdatePriceTextFormField({
    required this.funValidator,
    required this.controllerName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Consumer(
        builder: (context, ref, child) {
          // 무적의 리버팟코드
          ParamStore paramStore = ref.read(paramProvider);
          Product product = paramStore.product!;

          return (TextFormField(
            controller: controllerName,
            obscureText: false,
            validator: funValidator,
            decoration: InputDecoration(
              hintText: "${product.productPrice}",
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
