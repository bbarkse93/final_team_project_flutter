import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/auth/location_select_page/location_select_view_model.dart';

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

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
