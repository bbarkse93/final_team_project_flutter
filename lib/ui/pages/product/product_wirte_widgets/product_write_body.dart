import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/product_wirte_widgets/write_page_product_price.dart';
import 'package:team_project/ui/pages/product/product_wirte_widgets/write_page_product_name.dart';

class ProductWriteBody extends StatefulWidget {
  const ProductWriteBody({super.key});

  @override
  State<ProductWriteBody> createState() => _ProductWriteBodyState();
}

class _ProductWriteBodyState extends State<ProductWriteBody> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductPictureButton(),
              WriteFormProductName(),
              WriteFormProductPrice(),
              SizedBox(height: mediumGap),
              // TextFormFieldTitle(
              //   text: '제품 설명',
              // ),
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

class ProductPictureButton extends StatelessWidget {
  const ProductPictureButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: SizedBox(
        width: 50,
        height: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.photo_camera_solid,
              color: Colors.black54,
            ),
            Text(
              "/10",
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}

class ProductInfoLabel extends StatelessWidget {
  final String text;
  const ProductInfoLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${text}",
      style: TextStyle(fontSize: fontLarge),
    );
  }
}

class ProductInfoWriteField extends StatelessWidget {
  final String text;
  const ProductInfoWriteField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextFormField(
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: InputDecoration(
          hintText: "${text}",
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
      ),
    );
  }
}
