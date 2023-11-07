import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';

import 'package:team_project/ui/pages/my_location/location_select_page/location_select_view_model.dart';

class CustomSearchTextFormField extends ConsumerWidget
    implements PreferredSizeWidget {
  final locationcontroller;
  const CustomSearchTextFormField({
    super.key,
    this.locationcontroller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: TextFormField(
        onChanged: (value) {
          ref.read(locationSelectProvider.notifier).updateText(value);
        },
        // onFieldSubmitted: (value) {
        //   _submitForm(value);
        // },
        controller: locationcontroller,
        decoration: InputDecoration(
            fillColor: Colors.black12,
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(xsmallGap),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(xsmallGap),
            ),
            hintText: "내 동네 (읍, 면, 동)으로 검색"),
      ),
    );
  }

  void _submitForm(String value) {
    // 여기에 폼 제출 또는 원하는 작업을 수행하는 코드를 추가합니다.
    Logger().d("제출된 값 : $value");
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
