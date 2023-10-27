import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/widgets/product_write_choice_button.dart';
import 'package:team_project/ui/pages/product/widgets/product_write_description_text_form_field.dart';
import 'package:team_project/ui/pages/product/widgets/product_write_form_field_title.dart';
import 'package:team_project/ui/pages/product/widgets/product_write_picture_add_area.dart';
import 'package:team_project/ui/pages/product/widgets/product_write_suggest_ckeck_box.dart';
import 'package:team_project/ui/pages/product/widgets/product_write_text_form_field.dart';
import 'package:team_project/ui/pages/product/widgets/product_write_text_form_field2.dart';

class ProductWriteBody extends StatefulWidget {
  ProductWriteBody({super.key});

  @override
  State<ProductWriteBody> createState() => _ProductWriteBodyState();
}

class _ProductWriteBodyState extends State<ProductWriteBody> {
  bool isChecked = true;
  final _productName = TextEditingController();
  final _productPrice = TextEditingController();
  final _productDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          //PictureAddForm(),
          Container(
            padding: EdgeInsets.only(right: smallGap),
            height: 75,
            child: PictureAddArea(),
          ),
          SizedBox(height: mediumGap),
          TextFormFieldTitle(text: "제목"),
          WriteTextFormField(hintText: "제목입력해주세요"),
          SizedBox(height: mediumGap),
          TextFormFieldTitle(text: "가격"),
          ChoiceButton(),
          WriteTextFormField2(hintText: "￦ 가격을 입력해주세요."),
          SuggestCheckBox(isChecked: isChecked),
          SizedBox(height: mediumGap),
          TextFormFieldTitle(text: "상품 설명"),
          DescriptionTextFormField(),
        ],
      ),
    );
  }
}
