import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/product_wirte_widgets/choice_button.dart';
import 'package:team_project/ui/pages/product/product_wirte_widgets/product_write_body.dart';

class WriteFormProductPrice extends StatefulWidget {
  const WriteFormProductPrice({super.key});

  @override
  State<WriteFormProductPrice> createState() => _WriteFormProductPriceState();
}

class _WriteFormProductPriceState extends State<WriteFormProductPrice> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProductInfoLabel(text: "가격"),
            _suggestPriceButton(),
          ],
        ),
        ProductInfoWriteField(text: "가격을 입력하세요"),
        SizedBox(height: smallGap),
        SizedBox(
          child: ChoiceButton(),
        ),
      ],
    );
  }

  ////////////////////////////////

  Row _suggestPriceButton() {
    return Row(
      children: [
        SizedBox(
          width: 20,
          child: Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return kCarrotColor;
              }
            }),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        SizedBox(width: 10),
        Text(
          "가격 제안하기",
          style: TextStyle(fontSize: fontLarge, color: kDarkColor),
        )
      ],
    );
  }

  Widget _donateButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      child: Text("나눔하기", style: TextStyle(color: Colors.black)),
      onPressed: () {},
    );
  }
}
