import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/data/model/product.dart';
import 'package:team_project/ui/pages/product/update_page/product_update_view_model.dart';

class UpdateDescriptionTextFormField extends ConsumerWidget {
  final controllerName;
  final funValidator;
  const UpdateDescriptionTextFormField({
    required this.funValidator,
    required this.controllerName,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductUpdateModel? model = ref.watch(productUpdateProvider);

    if (model!.product != null) {
      Product product = model.product;
    }

    return TextFormField(
      controller: controllerName,
      validator: funValidator,
      onChanged: (value) {},
      maxLines: 5,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        hintText: "${product.productDescription}",
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
    );
  }
}
