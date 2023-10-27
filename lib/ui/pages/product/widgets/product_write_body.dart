import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/widgets/product_write_form.dart';

class ProductWriteBody extends StatelessWidget {
  ProductWriteBody({super.key});

  ProductWriteForm productWriteForm = ProductWriteForm();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          //PictureAddForm(),

          productWriteForm,
          Consumer(
            builder: (context, ref, child) {
              return (Padding(
                padding: EdgeInsets.only(top: smallGap),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Color.fromRGBO(255, 126, 0, 1)),
                  child: Text(
                    '작성완료',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    productWriteForm.submit(ref);
                    // TODO 통신코드 구현
                  },
                ),
              ));
            },
          )
        ],
      ),
    );
  }
}
