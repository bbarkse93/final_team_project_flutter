import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/write_page/product_write_page.dart';

class CustomFloationButton extends StatelessWidget {
  const CustomFloationButton({super.key});

  @override
  SpeedDial build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_arrow,
      visible: true,
      curve: Curves.easeInOutCubicEmphasized,
      backgroundColor: kCarrotColor,
      children: [
        SpeedDialChild(
          child: const Icon(
            Icons.card_giftcard_rounded,
            color: Colors.white,
          ),
          label: "상품 등록",
          backgroundColor: kDarkColor,
          labelBackgroundColor: kDarkColor,
          labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: fontSmall),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => ProductWritePage()));
          },
        )
      ],
    );
  }
}
