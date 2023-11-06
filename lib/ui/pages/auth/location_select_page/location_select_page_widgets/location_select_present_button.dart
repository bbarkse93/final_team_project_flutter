import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class LocationSelectPresentButton extends StatelessWidget {
  const LocationSelectPresentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kCarrotColor,
          minimumSize: Size(double.infinity, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_searching_outlined,
              color: Colors.white,
              size: fontMedium,
            ),
            Text(
              " 현재 위치로 찾기",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
