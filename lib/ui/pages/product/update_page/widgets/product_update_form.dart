import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/_core/utils/validator_util.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/ui/pages/product/update_page/widgets/product_update_description_text_form_field.dart';
import 'package:team_project/ui/pages/product/update_page/widgets/product_update_price_text_form_field.dart';
import 'package:team_project/ui/pages/product/update_page/widgets/product_update_product_name_text_form_field.dart';
import 'package:team_project/ui/pages/product/write_page/widgets/product_write_choice_button.dart';
import 'package:team_project/ui/pages/product/write_page/widgets/product_write_form_field_title.dart';
import 'package:team_project/ui/pages/product/write_page/widgets/product_write_picture_add_area.dart';
import 'package:team_project/ui/pages/product/write_page/widgets/product_write_suggest_ckeck_box.dart';

class ProductUpdateForm extends StatelessWidget {
  ProductUpdateForm({Key? key}) : super(key: key);

  bool isChecked = true;

  final formKey = GlobalKey<FormState>();
  final productName = TextEditingController();
  final price = TextEditingController();
  final description = TextEditingController();
  final photoList = ValueNotifier<List<String>>([]);

  void submit(WidgetRef ref) {
    if (formKey.currentState!.validate()) {
      Logger().d("여기는 form 위젯 계층이에요 + ${photoList.value.length}");
      Logger().d("여기는 form 위젯 계층이에요 + ${productName}");
      Logger().d("여기는 form 위젯 계층이에요 + ${price}");
      Logger().d("여기는 form 위젯 계층이에요 + ${description}");

      int intPrice = int.parse(price.text);

      ProductUpdateDTO productUpdateDTODTO = ProductUpdateDTO(
        productName: productName.text,
        price: intPrice,
        description: description.text,
        photoList: photoList.value,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: smallGap),
            height: 75,
            child: PictureAddArea(photoList: photoList),
          ),
          SizedBox(height: mediumGap),
          TextFormFieldTitle(text: "제목"),
          UpdateProductNameTextFormField(controllerName: productName, funValidator: validateTitle()),
          SizedBox(height: mediumGap),
          TextFormFieldTitle(text: "가격"),
          ChoiceButton(),
          UpdatePriceTextFormField(controllerName: price, funValidator: validatePrice()),
          SuggestCheckBox(isChecked: isChecked),
          SizedBox(height: mediumGap),
          TextFormFieldTitle(text: "상품 설명"),
          UpdateDescriptionTextFormField(
            controllerName: description,
            funValidator: validateContent(),
          ),
        ],
      ),
    );
  }
}
