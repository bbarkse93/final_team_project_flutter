import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/data/dto/product_request.dart';
import 'package:team_project/ui/pages/product/list_page/product_list_view_model.dart';
import 'package:team_project/ui/pages/product/update_page/widgets/product_update_form.dart';

// TODO 데이터가 한번 save 이후 2번째 save때부턴 메소드가 안먹힘
class ProductUpdateBody extends StatelessWidget {
  ProductUpdateBody({super.key});

  ProductUpdateForm productUpdateForm = ProductUpdateForm();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          productUpdateForm,
          Consumer(
            builder: (context, ref, child) {
              return (Padding(
                padding: EdgeInsets.only(top: smallGap),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Color.fromRGBO(255, 126, 0, 1),
                  ),
                  child: Text(
                    '작성완료',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    productUpdateForm.submit(ref);
                    ProductWriteDTO proReqDTO = ProductWriteDTO(
                      productName: productUpdateForm.productName.text,
                      price: int.tryParse(productUpdateForm.price.text) ?? 0,
                      description: productUpdateForm.description.text,
                      photoList: productUpdateForm.photoList.value,
                    );

                    Logger().d(proReqDTO);
                    ref.read(productListProvider.notifier).notifyAdd(proReqDTO);
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
