import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/_core/utils/validator_util.dart';
import 'package:team_project/ui/pages/product/widgets/picture_add_form.dart';
import 'package:team_project/ui/pages/product/widgets/text_form_field_title.dart';
import 'package:team_project/ui/widgets/buttons/custom_elavated_button.dart';
import 'package:team_project/ui/widgets/forms/custom_text_form_field.dart';
import 'package:team_project/ui/widgets/forms/custom_text_form_field_no_val.dart';

class ProductWriteBody extends StatefulWidget {
  ProductWriteBody({super.key});

  @override
  State<ProductWriteBody> createState() => _ProductWriteBodyState();
}

class _ProductWriteBodyState extends State<ProductWriteBody> {
  bool isChecked = true;
  final _productName = TextEditingController();
  final _price = TextEditingController();
  final _productDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PictureAddForm(),
                SizedBox(height: mediumGap),
                TextFormFieldTitle("상품명"),
                CustomTextFormField(
                  funValidator: validateProductName(),
                  controller: _productName,
                  hint: "상품명을 입력해주세요",
                ),
                SizedBox(height: mediumGap),
                TextFormFieldTitle("가격"),
                Row(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      child: Text(
                        "판매하기",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: xsmallGap),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      child: Text(
                        "나눔하기",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox()
                  ],
                ),
                CustomTextFormFieldNoVal(
                  controller: _price,
                  hint: "상품 가격을 입력해주세요",
                ),
                Row(
                  children: [
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return Color.fromRGBO(255, 126, 0, 1);
                          }
                          return null;
                        }),
                        value: isChecked,
                        onChanged: (value) {}),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "가격 제안하기",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: mediumGap),
                TextFormFieldTitle("상품 설명"),
                CustomTextFormField(
                  funValidator: validateProductDescription(),
                  controller: _productDescription,
                  hint: "상품 설명을 작성 해주세요",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: mediumGap),
                  child: CustomElevatedButton(
                    text: '작성완료',
                    funPageRoute: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
