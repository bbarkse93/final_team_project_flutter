import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/widgets/picture_add_form.dart';
import 'package:team_project/ui/pages/product/widgets/text_form_field_title.dart';
import 'package:team_project/ui/pages/product/widgets/write_text_form_field.dart';

class ProductWriteBody extends StatefulWidget {
  ProductWriteBody({super.key});

  @override
  State<ProductWriteBody> createState() => _ProductWriteBodyState();
}

class _ProductWriteBodyState extends State<ProductWriteBody> {
  bool isChecked = true;
  final _productName = TextEditingController();

  final _productDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PictureAddForm(),
              SizedBox(height: mediumGap),
              TextFormFieldTitle(),
              WriteTextFormField(),
              SizedBox(height: mediumGap),
              TextFormFieldTitle(),
              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: Text(
                      "판매하기",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: xsmallGap),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: Text(
                      "나눔하기",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox()
                ],
              ),
              WriteTextFormField(),
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
              TextFormFieldTitle(),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 100, horizontal: 16),
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
